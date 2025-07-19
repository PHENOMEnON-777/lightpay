import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentNFCScreen extends StatefulWidget {
  const PaymentNFCScreen({super.key});

  @override
  State<PaymentNFCScreen> createState() => _PaymentNFCScreenState();
}

class _PaymentNFCScreenState extends State<PaymentNFCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NFC payment'),),
      body: Center(child: Text('nfc payment'),),
    );
  }
}