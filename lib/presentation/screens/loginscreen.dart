import 'package:flutter/material.dart';
import 'package:lightpay/presentation/widgets/loginwidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Center(
            child: SafeArea(
              child: Align(
                alignment: Alignment.center,
                child: LoginWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
