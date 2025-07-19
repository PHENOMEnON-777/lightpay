import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QRcodePaymentScreen extends StatefulWidget {
  const QRcodePaymentScreen({super.key});

  @override
  State<QRcodePaymentScreen> createState() => _QRcodePaymentScreenState();
}

class _QRcodePaymentScreenState extends State<QRcodePaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR code payment'),),
      body: Center(child: Text('QR code payment'),),
    );
  }
}