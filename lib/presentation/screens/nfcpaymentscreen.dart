import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/presentation/widgets/nfcanimationwidget.dart';
import 'package:lightpay/presentation/widgets/pincodeverification.dart';
import 'package:lightpay/presentation/widgets/transactionfailedwidget.dart';
import 'package:nfc_manager/nfc_manager.dart';

class PaymentNFCScreen extends StatefulWidget {
  const PaymentNFCScreen({super.key});

  @override
  State<PaymentNFCScreen> createState() => _PaymentNFCScreenState();
}

class _PaymentNFCScreenState extends State<PaymentNFCScreen> {
  NFCAnimationState _animationState = NFCAnimationState.idle;
  String _nfcData = '';
  String _statusMessage = 'Initializing NFC...';

  @override
  void initState() {
    super.initState();
    _startNFC(); 
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
            // Simulate transaction
            final transaction = Transaction(amount: 2000);
            context.read<TransactionBloc>().add(
                  TransactionEvent.transactionInitiation(transaction: transaction),
                );
          } else {
            setState(() {
              _statusMessage = 'PIN verification failed. Transaction cancelled.';
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
    return data.entries.map((e) => '${e.key}: ${e.value}').join('\n');
  }

  void _restartNFC() {
    Future.delayed(const Duration(seconds: 3), () {
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

  String get _instructionText {
    switch (_animationState) {
      case NFCAnimationState.scanning:
        return 'Hold your device close to the NFC reader';
      case NFCAnimationState.success:
        return 'NFC tag detected successfully!';
      case NFCAnimationState.error:
        return 'Please try again or check NFC settings';
      case NFCAnimationState.idle:
        return 'Initializing...';
    }
  }

  String get _titleText {
    switch (_animationState) {
      case NFCAnimationState.scanning:
        return 'Tap to Pay';
      case NFCAnimationState.success:
        return 'Success!';
      case NFCAnimationState.error:
        return 'Error';
      case NFCAnimationState.idle:
        return 'Ready';
    }
  }

  @override
  void dispose() {
    NfcManager.instance.stopSession();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
      appBar: AppBar(
        title: const Text(
          "NFC Payment",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: BlocConsumer<TransactionBloc, TransactionState>(
          listener: (context, state) {
            if (state is PaymentInitiationSuccessfull) {
              Navigator.of(context).pushNamed(Pagenavigation.payedsuccessfully,arguments: state.response,);
              context.read<TransactionBloc>().add(TransactionEvent.reset());
              _startNFC(); 
            } else if (state is PaymentInitiationFailed) {
              Navigator.of(context).pushNamed(Pagenavigation.paymentFailed,arguments: state.errormessga,);
              context.read<TransactionBloc>().add(TransactionEvent.reset());
              _startNFC(); 
            }
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                return Column(
                  children: [
                    // Header Section
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 20,
                      ),
                      decoration:  BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor ,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.contactless,
                            size: 48,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            _statusMessage,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    // Main Content
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // NFC Animation Section
                            SizedBox(
                              width: screenWidth * 0.9,
                              height: screenHeight * 0.35,
                              child: Center(
                                child: NFCAnimationController(
                                  state: _animationState,
                                  size: 280,
                                  primaryColor: const Color(0xFF2196F3),
                                  successColor: Colors.green,
                                  errorColor: Colors.red,
                                  onTap: () {
                                    if (_animationState ==
                                        NFCAnimationState.error) {
                                      _startNFC();
                                    }
                                  },
                                  onAnimationComplete: () {
                                    if (_animationState ==
                                        NFCAnimationState.error) {
                                      _restartNFC();
                                    }
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            // Dynamic title and instruction text
                            Text(
                              _titleText,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: _animationState ==
                                        NFCAnimationState.success
                                    ? Colors.green
                                    : _animationState == NFCAnimationState.error
                                        ? Colors.red
                                        : const Color(0xFF333333),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _instructionText,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(0xFF666666),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            // Retry button for error state
                            if (_animationState == NFCAnimationState.error) ...[
                              ElevatedButton(
                                onPressed: _startNFC,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF2196F3),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 32,
                                    vertical: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: const Text('Retry'),
                              ),
                              const SizedBox(height: 20),
                            ],
                            // NFC Data Display Section
                            if (_nfcData.isNotEmpty) ...[
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 10,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey.shade600,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'NFC Data Received',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade800,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade50,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                      child: Text(
                                        _nfcData,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'monospace',
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              paymentinitiationFailed: (errormessga) =>
                  TransactionFailedWidget(errorMessage: errormessga),
              orElse: () => const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            );
          },
        ),
      ),
    );
  }
}