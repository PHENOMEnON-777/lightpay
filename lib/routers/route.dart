





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/presentation/screens/loginscreen.dart';
import 'package:lightpay/presentation/screens/nfcpaymentscreen.dart';
import 'package:lightpay/presentation/screens/qrcodepaymentscreen.dart';
import 'package:lightpay/presentation/screens/tabscreen.dart';

class AppRoute {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    switch (settings.name) {
      case Pagenavigation.loginscreen:
      return MaterialPageRoute(builder: (context)=> const LoginScreen());
      case Pagenavigation.tabscreen:
      return MaterialPageRoute(builder: (context)=>const TabScreen());
      case Pagenavigation.qrcodepaymentscreen:
      return MaterialPageRoute(builder: (context)=>const QRcodePaymentScreen());
      case Pagenavigation.nfcpaymentscreen:
      return MaterialPageRoute(builder: (context)=> const PaymentNFCScreen());
       default:
      return  MaterialPageRoute(
            builder: ((context) => Scaffold(
                  appBar: AppBar(),
                  body: const Center(
                    child: Text('No app Route found'),
                  ),
                )),);
    }
  }
}