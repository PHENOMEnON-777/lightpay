import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/constants/pagenavigation.dart';
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
      backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
      body:  SingleChildScrollView(
        child: Center(
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if(state is LoginWithTokenSuccessfully){
                  return Column(
                      children: [
                        Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 24,
                                    horizontal: 20,
                                  ),
                                  decoration:  BoxDecoration(
                                    color: Theme.of(context).secondaryHeaderColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
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
                                      title: Text('Name',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),),
                                      subtitle: Text(state.response.data!['name'],style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      leading: CircleAvatar(child: Icon(Icons.abc)),
                                    ),
                                  ),
                                   Padding(
                                     padding: const EdgeInsets.only(left:50),
                                     child: ListTile(
                                      title: Text('email',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      subtitle: Text(state.response.data!['email'],style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      leading: CircleAvatar(child: Icon(Icons.email_rounded)),
                                                           ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 50),
                                     child: ListTile(
                                      title: Text('phone',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      subtitle: Text(state.response.data!['phone'],style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
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
                                           builder: (context) => ShowEditableDialog(userData: state.response.data!),
                                                 );
                                        
                                       }, icon: Icon(Icons.edit,color: Colors.blue,)),
                                       Text('edit profile',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary))
                                     ],
                                   ),
                                  SizedBox(height: screenHeight * 0.03,),
                                  SizedBox(
                                    width: screenWidth * 0.9,
                                    child: Card(
                                      color: Theme.of(context).colorScheme.secondaryFixed,
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
                                          onTap: ()=> Navigator.of(context).pushNamed(Pagenavigation.changepasswordscreen),
                                          leading:  Icon(Icons.lock_outline,color:Theme.of(context).colorScheme.onSecondary,),
                                          title:  Text("Change password",style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                          trailing:
                                               Icon(Icons.arrow_forward_ios, size: 16,color: Theme.of(context).colorScheme.onSecondary,),
                                        ),
                                         Divider(color: Theme.of(context).colorScheme.onSecondary,),
                                        ListTile(
                                        onTap: () => Navigator.of(context).pushNamed(Pagenavigation.changepincodescreeen),
                                          leading:  Icon(Icons.pin_outlined,color: Theme.of(context).colorScheme.onSecondary,),
                                          title: Text("Change PIN code",style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                          trailing:
                                               Icon(Icons.arrow_forward_ios, size: 16,color: Theme.of(context).colorScheme.onSecondary,),
                                        ),
                                      ],
                                    ),
                                                        ),
                                                      ),
                                  ),
                    ],);
                }
                   return Column(
                      children: [
                        Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 24,
                                    horizontal: 20,
                                  ),
                                  decoration:  BoxDecoration(
                                    color: Theme.of(context).secondaryHeaderColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
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
                                      title: Text('Name',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      subtitle: Text('loading...',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      leading: CircleAvatar(child: Icon(Icons.abc)),
                                    ),
                                  ),
                                   Padding(
                                     padding: const EdgeInsets.only(left:50),
                                     child: ListTile(
                                      title: Text('email',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      subtitle: Text('loading...',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      leading: CircleAvatar(child: Icon(Icons.email_rounded)),
                                                           ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 50),
                                     child: ListTile(
                                      title: Text('phone',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      subtitle: Text('loading...',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                      leading: CircleAvatar(child: Icon(Icons.phone_enabled)),
                                                           ),
                                   ),
                                  SizedBox(height: screenHeight * 0.03,),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       IconButton(onPressed: (){
                                        
                                       }, icon: Icon(Icons.edit_calendar_rounded,color: Colors.blue,)),
                                       Text('edit profile',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary))
                                     ],
                                   ),
                                  SizedBox(height: screenHeight * 0.03,),
                                  SizedBox(
                                    width: screenWidth * 0.9,
                                    child: Card(
                                      color: Theme.of(context).colorScheme.secondaryFixed,
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
                                          title:  Text("Change password",style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                          trailing:
                                               Icon(Icons.arrow_forward_ios, size: 16,color: Theme.of(context).colorScheme.onSecondary,),
                                        ),
                                         Divider(color: Theme.of(context).colorScheme.onSecondary,),
                                        ListTile(
                                        onTap: () {},
                                          leading: const Icon(Icons.pin_outlined),
                                          title:  Text("Change PIN code",style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
                                          trailing:
                                               Icon(Icons.arrow_forward_ios, size: 16,color: Theme.of(context).colorScheme.onSecondary,),
                                        ),
                                      ],
                                    ),
                                                        ),
                                                      ),
                                  ),
                    ],);
                },
         
            ),
          ),
      ),
    );
  }
}