





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/presentation/screens/changepasswordscreen.dart';
import 'package:lightpay/presentation/screens/changepincodescreen.dart';
import 'package:lightpay/presentation/screens/loginscreen.dart';
import 'package:lightpay/presentation/screens/nfcpaymentscreen.dart';
import 'package:lightpay/presentation/screens/profilescreen.dart';
import 'package:lightpay/presentation/screens/qrcodepaymentscreen.dart';
import 'package:lightpay/presentation/screens/sendmoneyscreen.dart';
import 'package:lightpay/presentation/screens/setttingsscreen.dart';
import 'package:lightpay/presentation/screens/tabscreen.dart';
import 'package:lightpay/presentation/widgets/transactionfailedwidget.dart';
import 'package:lightpay/presentation/widgets/transactionsuccesswidget.dart';

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
      case Pagenavigation.payedsuccessfully:
      final response = settings.arguments as AppResponse<Map<String,dynamic>>;
      return MaterialPageRoute(builder: (context)=> TransactionSuccessWidget(responseData: response,));
      case Pagenavigation.paymentFailed:
      final errormessage = settings.arguments as String;
      return MaterialPageRoute(builder: (context)=> TransactionFailedWidget(errorMessage: errormessage,));
      case Pagenavigation.sendmoneyscreen:
      return MaterialPageRoute(builder: (context)=> SendMoneyScreen());
      case Pagenavigation.settingscreen:
      return MaterialPageRoute(builder: (context)=> SettingsScreen());
      case Pagenavigation.profilescreen:
      return MaterialPageRoute(builder: (context)=> ProfileScreen());
      case Pagenavigation.changepasswordscreen:
      return MaterialPageRoute(builder: (context)=>ChangePasswordScreen());
      case Pagenavigation.changepincodescreeen:
      return MaterialPageRoute(builder: (context)=>ChangePincodeScreen());
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