


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/data/model/usermangament/updateprofile/updateprofile.dart';
import 'package:lightpay/logic/bloc/authbloc/Auth/Auth_bloc.dart';
import 'package:lightpay/logic/bloc/usermanagementbloc/Usermanagement/Usermanagement_bloc.dart';

class ShowEditableDialog extends StatefulWidget {
  final Map<String, dynamic> userData;
  const ShowEditableDialog({required this.userData, super.key});

  @override
  State<ShowEditableDialog> createState() => _ShowEditableDialogState();
}

class _ShowEditableDialogState extends State<ShowEditableDialog>with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;



  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
    );

  
    _nameController = TextEditingController(text: widget.userData['name'] ?? '');
    _emailController = TextEditingController(text: widget.userData['email'] ?? '');
    _phoneController = TextEditingController(text: widget.userData['phone']?.toString() ?? '', );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color dialogBackgroundColor = Theme.of(context).cardColor; 

    return ScaleTransition(
      scale: _scaleAnimation,
      child: AlertDialog(
        backgroundColor: dialogBackgroundColor, // Apply consistent background
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
                'Edit User Profile', // Dynamic title
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0), // Adjust padding
        content: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTextFormField(
                  controller: _nameController,
                  labelText: 'Name',
                  hintText: 'Full Name',
                  icon: Icons.person,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the name';
                    }
                    if (value.length > 50) {
                      return 'Name is too long (max 50 characters)';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 18), // Increased spacing
                _buildTextFormField(
                  controller: _emailController,
                  labelText: 'Email',
                  hintText: 'user@example.com',
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 18),
                _buildTextFormField(
                  controller: _phoneController,
                  labelText: 'Contact Number',
                  hintText: '+237 6XX XXX XXX',
                  icon: Icons.phone,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter contact number';
                    }
                    if (!RegExp(r'^[+0-9\s-]{6,20}$').hasMatch(value)) {
                      return 'Invalid phone number format';
                    }
                    return null;
                  },
                ),
               
                const SizedBox(height: 10), 
              ],
            ),
          ),
        ),
        actionsPadding: const EdgeInsets.all(20.0), 
        actions: [
          TextButton(
            onPressed: () {
              _animationController.reverse().then(
                (_) => Navigator.pop(context),
              );
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text('Cancel'),
          ),
          BlocConsumer<UsermanagementBloc, UsermanagementState>(
            listener: (context, state) {
             if (state is UpdatingUserProfileSuccessfully) {
                    _animationController.reverse().then((_) {
                Navigator.pop(context);
                   context.read<AuthBloc>().add(AuthEvent.loginwithToken());
                    });
                  } else if (state is UpdatingUserProfileFailed) {
                _animationController.reverse().then((_) {
                 Navigator.pop(context);
                   ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Failed to update profile')),
                     );
                       });
                         }
            },
            builder: (context, state) {
              final bool isLoading = state is LoadingToUpdateUserProfile ;
              return ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () {
                        if (_formKey.currentState!.validate()) {
                          final updateprofile = UpdateProfile(name: _nameController.text.trim(), email: _emailController.text.trim(), phone: _phoneController.text.trim());
                            context.read<UsermanagementBloc>().add(UsermanagementEvent.updateprofile(updateprofile: updateprofile));
                        }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Use accent color
                  foregroundColor: Colors.black, // Text color on accent
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                child: isLoading
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      )
                    : Text(
                         'Save', // Dynamic button text
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              );
            },
          ),
        ],
      ),
    );
  }

  
  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    String? hintText,
    IconData? icon,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    String? Function(String?)? validator,
  }) {
    // final Color textColor = Colors.white;
    // final Color hintTextColor = Colors.grey[400]!;
    // final Color inputFillColor = Colors.blueGrey[900]!;
    final Color accentColor = const Color.fromARGB(255, 2, 13, 35);

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      // style: TextStyle(color: textColor),
      decoration: InputDecoration(
        labelText: labelText,
        // labelStyle: TextStyle(color: hintTextColor),
        hintText: hintText,
        // hintStyle: TextStyle(color: hintTextColor.withOpacity(0.7)),
        prefixIcon: icon != null ? Icon(icon, color: accentColor) : null,
        filled: true,
        fillColor:Colors.grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
        ),
        errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 12),
      ),
      validator: validator,
    );
  }

  // void _showSnackBar(BuildContext context, String message,) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       // width: 6
  //       content: Center(child: Text(message,)),
  //       // backgroundColor: color,
  //       behavior: SnackBarBehavior.floating,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
  //       margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 150, right: 20, left: 20),
  //     ),
  //   );
  // }
}