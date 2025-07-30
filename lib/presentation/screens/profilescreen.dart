import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/logic/bloc/authbloc/Auth/Auth_bloc.dart';
import 'package:lightpay/presentation/widgets/showeditabledialog.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState() {
    super.initState();
  context.read<AuthBloc>().add(AuthEvent.loginwithToken());
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.maybeWhen(loginwithtokensuccessfully: (response) {
                 return Column(
                    children: [
                      Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 24,
                                  horizontal: 20,
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF2196F3),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                     Text('profile', style: TextStyle(fontSize: 24)),
                                    SizedBox(height: screenHeight * 0.03),
                                    const CircleAvatar(
                                radius: 70,
                                child: Icon(Icons.person, size: 40, color: Colors.white),
                              ),
                              SizedBox(height: screenHeight * 0.05,),
                                   
                                  ],
                                ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: ListTile(
                                    title: Text('Name'),
                                    subtitle: Text(response.data!['name']),
                                    leading: CircleAvatar(child: Icon(Icons.abc)),
                                  ),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:50),
                                   child: ListTile(
                                    title: Text('email'),
                                    subtitle: Text(response.data!['email']),
                                    leading: CircleAvatar(child: Icon(Icons.email_rounded)),
                                                         ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: ListTile(
                                    title: Text('phone'),
                                    subtitle: Text(response.data!['phone']),
                                    leading: CircleAvatar(child: Icon(Icons.phone_enabled)),
                                                         ),
                                 ),
                                SizedBox(height: screenHeight * 0.03,),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     IconButton(onPressed: (){
                                      showDialog(
                                         context: context,
                                         builder: (context) => ShowEditableDialog(userData: response.data!),
                                               );
                                      
                                     }, icon: Icon(Icons.edit_calendar_rounded)),
                                     Text('edit profile')
                                   ],
                                 ),
                                SizedBox(height: screenHeight * 0.03,),
                                SizedBox(
                                  width: screenWidth * 0.9,
                                  child: Card(
                                                      shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                                      ),
                                                      elevation: 2,
                                                      child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        onTap: () {},
                                        leading: const Icon(Icons.lock_outline),
                                        title: const Text("Change password"),
                                        trailing:
                                            const Icon(Icons.arrow_forward_ios, size: 16),
                                      ),
                                      const Divider(),
                                      ListTile(
                                      onTap: () {},
                                        leading: const Icon(Icons.pin_outlined),
                                        title: const Text("Change PIN code"),
                                        trailing:
                                            const Icon(Icons.arrow_forward_ios, size: 16),
                                      ),
                                    ],
                                  ),
                                                      ),
                                                    ),
                                ),
                  ],);
              },
              orElse: () => Center(child: CircularProgressIndicator(strokeWidth: 2,),),
              );
             
            },
          ),
        ),
      ),
    );
  }
}