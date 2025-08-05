// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/presentation/widgets/nfcanimationwidget.dart';
import 'package:lightpay/presentation/widgets/pincodeverification.dart';
import 'package:nfc_manager/nfc_manager.dart';

class TransactionFailedWidget extends StatefulWidget {
  final String errorMessage;
 const TransactionFailedWidget({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  State<TransactionFailedWidget> createState() => _TransactionFailedWidgetState();
}

class _TransactionFailedWidgetState extends State<TransactionFailedWidget> {
  NFCAnimationState _animationState = NFCAnimationState.idle;
  String _nfcData = '';
  String _statusMessage = 'Initializing NFC...';

  @override
  void initState() {
    super.initState();
    _startNFC();
    _restartNFC();
  }

  void _startNFC() async {
    try {
      setState(() {
        _statusMessage = 'Starting NFC session...';
        _animationState = NFCAnimationState.scanning;
      });

      bool isAvailable = await NfcManager.instance.isAvailable();
      if (!isAvailable) {
        setState(() {
          _statusMessage = 'NFC not available on this device';
          _animationState = NFCAnimationState.error;
        });
        return;
      }

      setState(() {
        _statusMessage = 'Hold your device near an NFC tag or card';
        _animationState = NFCAnimationState.scanning;
      });

      NfcManager.instance.startSession(
        onDiscovered: (NfcTag tag) async {
          setState(() {
            _statusMessage = 'NFC tag discovered! Processing...';
            _animationState = NFCAnimationState.success;
            _nfcData = _extractNfcData(tag);
          });

          // Wait for success animation to complete
          await Future.delayed(const Duration(milliseconds: 1000));

          bool pinVerified = await promptUserPinCode(context, _restartNFC);

          if (pinVerified == true) {
            setState(() {
              _statusMessage = 'PIN verified. Processing transaction...';
            });
            // this amount here is just for simulation
            final transaction = Transaction(amount: 2000);

            context.read<TransactionBloc>().add(TransactionEvent.transactionInitiation(transaction: transaction),
            );
          } else {
            setState(() {
              _statusMessage =
                  'PIN verification failed. Transaction cancelled.';
              _animationState = NFCAnimationState.error;
            });
            _restartNFC();
          }

          NfcManager.instance.stopSession();
        },
        pollingOptions: {
          NfcPollingOption.iso14443,
          NfcPollingOption.iso15693,
          NfcPollingOption.iso18092,
        },
      );
    } catch (e) {
      setState(() {
        _statusMessage = 'Error: ${e.toString()}';
        _animationState = NFCAnimationState.error;
      });
    }
  }

  String _extractNfcData(NfcTag tag) {
    Map<String, dynamic> data = {};

    // Extract basic tag information
    // data['identifier'] = tag.data['identifier']?.toString() ?? 'N/A';
    // data['techList'] = tag.data['techList']?.toString() ?? 'N/A';

    // Try to extract NDEF data if available
    // if (tag.data.containsKey('ndef')) {
    // data['ndef'] = tag.data['ndef'].toString();
    // }

    // Try to extract other technology-specific data
    // tag.data.forEach((key, value) {
    //   if (!data.containsKey(key)) {
    //     data[key] = value.toString();
    //   }
    // });

    return data.entries.map((e) => '${e.key}: ${e.value}').join('\n');
  }

 void _restartNFC({bool immediate = false}) {
  final delay = immediate ? Duration.zero : const Duration(seconds: 3);
  Future.delayed(delay, () {
    if (mounted) {
      setState(() {
        _animationState = NFCAnimationState.scanning;
        _nfcData = '';
        _statusMessage = 'Hold your device near an NFC tag or card';
      });
      _startNFC();
    }
  });
}
  @override
  void dispose() {
    NfcManager.instance.stopSession();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Error Animation
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 800),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              builder: (context, double value, child) {
                return Transform.scale(
                  scale: value,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFE57373), Color(0xFFEF5350)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFE57373).withOpacity(0.3),
                          blurRadius: 20,
                          spreadRadius: 5,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
        
            const SizedBox(height: 32),
        
            // Error Title
             Text(
              'Transaction Failed',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSecondary,
              ),
              textAlign: TextAlign.center,
            ),
        
            const SizedBox(height: 16),
        
            // Error Message
            Text(
              widget.errorMessage,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF666666),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
        
            const SizedBox(height: 32),
        
            // Retry Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
               context.read<TransactionBloc>().add(TransactionEvent.reset());
                            Navigator.of(context).pop();
                },
                icon: const Icon(Icons.refresh),
                label:  Text('Try Again',style: TextStyle(color: Theme.of(context).colorScheme.onSecondary,),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2196F3),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}