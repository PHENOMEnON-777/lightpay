import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/data/model/changepassword/changepassword.dart';
import 'package:lightpay/logic/bloc/usermanagementbloc/Usermanagement/Usermanagement_bloc.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscure = true;

  void _submit() {
    if (_formKey.currentState!.validate()){
      final changepassword  = ChangePassword(current_password: _currentPasswordController.text.trim(), new_password: _newPasswordController.text.trim(), new_password_confirmation: _confirmPasswordController.text.trim());
      context.read<UsermanagementBloc>().add(UsermanagementEvent.updatepassword(changepassword: changepassword));
    }
  }



  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

    void _clearControllers() {
      setState(() {
    _currentPasswordController.clear();
    _newPasswordController.clear();
    _confirmPasswordController.clear();
      });

    _formKey.currentState?.reset();
  }


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor ,
      appBar: AppBar(
      backgroundColor: Theme.of(context).secondaryHeaderColor ,
        title: const Text("Modify password",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryFixed,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
            ),
        child: BlocConsumer<UsermanagementBloc, UsermanagementState>(
          listener: (context, state) {
            if (state is UpdatingUserPasswordSuccessfully) {
              _clearControllers();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Password updated successfully",style: TextStyle(color: Colors.green),)),
              );
            } else if (state is UpdatingUserPasswordFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("updating password failed",style: TextStyle(color: Colors.red),)),
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                     Icon(Icons.lock, size: 130,color: Colors.blue,),
                     SizedBox(height: screenHeight * 0.04,),
                   TextFormField(
        controller:_currentPasswordController,
        obscureText: _obscure,
        decoration: InputDecoration(
          filled: true,
          labelText: 'current password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: IconButton(
            icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
            onPressed: () => setState(() => _obscure = !_obscure),
          ),
        ),
        validator: (value) {
                            if (value!.isEmpty || value.length < 8) {
                              return 'At least 8 Characters!';
                            }
                            return null;
                          },),
                     SizedBox(height: screenHeight * 0.02,),
        
                          TextFormField(
        controller:_newPasswordController,
        obscureText: _obscure,
        decoration: InputDecoration(
          filled: true,
          labelText: 'New password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: IconButton(
            icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
            onPressed: () => setState(() => _obscure = !_obscure),
          ),
        ),
        validator: (value) {
                            if (value!.isEmpty || value.length < 8) {
                              return 'At least 8 Characters!';
                            }
                            if(_currentPasswordController.text.trim() == _newPasswordController.text.trim()){
                              return "new password should be different from old";
                            }
                            return null;
                          },),
                     SizedBox(height: screenHeight * 0.02,),
                          TextFormField(
        controller:_confirmPasswordController,
        obscureText: _obscure,
        decoration: InputDecoration(
          filled: true,
          labelText: 'confirm password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: IconButton(
            icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
            onPressed: () => setState(() => _obscure = !_obscure),
          ),
        ),
        validator: (value) {
                            if (value!.isEmpty || value.length < 8) {
                              return 'At least 8 Characters!';
                            }
                            if(_confirmPasswordController.text.trim() != _newPasswordController.text.trim()){
                              return "Enter the same password to confirm";
                            }
                            return null;
                          },),
                     SizedBox(height: screenHeight * 0.02,),
                   ElevatedButton(
                      onPressed: _submit,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      child:state is LoadingToUpdateUserPassword ? CircularProgressIndicator(strokeWidth: 2,) :  Text("update password"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}