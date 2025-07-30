import 'package:flutter/material.dart';
import 'package:lightpay/constants/pagenavigation.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Settings'),),
      body: Column(children: [
        ListTile(
          onTap: () => Navigator.of(context).pushNamed(Pagenavigation.profilescreen),
          leading: CircleAvatar(child: Icon(Icons.person_2),),
          title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text('User Profile'),
        ),
        SizedBox(
          width: screenWidth * 0.2  ,
          child: Divider()),
        ListTile(leading: CircleAvatar(child: Icon(Icons.logout_rounded)),
        title: Text('Log out',style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text('Log out user'),
        ),
        
      ],),
    );
  }
}