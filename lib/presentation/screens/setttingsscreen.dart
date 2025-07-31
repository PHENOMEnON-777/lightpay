import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/logic/bloc/authbloc/Auth/Auth_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Column(
        children: [
          ListTile(
            onTap:
                () => Navigator.of(
                  context,
                ).pushNamed(Pagenavigation.profilescreen),
            leading: CircleAvatar(child: Icon(Icons.person_2)),
            title: Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('User Profile'),
          ),
          SizedBox(width: screenWidth * 0.2, child: Divider()),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.logout_rounded)),
            title: Text(
              'Log out',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Log out user'),
            onTap: () {
              showDialog(
                context: context,
                builder:
                    (ctx) => BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        if(state is LoginOUtUserSuccessfully){
                           final FlutterSecureStorage storage = const FlutterSecureStorage();
                                 storage.delete(key: 'token');
                          Navigator.of(context).pushNamed(Pagenavigation.loginscreen);
                        }
                        if(state is LoginOutUserFailed){
                          ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Failed to log-out, check your internet connection !!!",style: TextStyle(color: Colors.red),)));
                        }
                      },
                      child: AlertDialog(
                        title: const Text(
                          'Are you sure',
                          style: TextStyle(color: Colors.blue),
                        ),
                        content: const Text('Do you realy want to logout?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop(false);
                            },
                            child: const Text(
                              'No',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              try {
                                context.read<AuthBloc>().add(
                                  AuthEvent.logout(),
                                );
                              } catch (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'LogOut failed!\n Check your internet connection...',
                                    ),
                                  ),
                                );
                              }
                            },
                            child: State is LogingOutUser ? CircularProgressIndicator() : const Text(
                              'Yes',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
