import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/presentation/widgets/nfcanimationwidget.dart';
import 'package:lightpay/presentation/widgets/pincodeverification.dart';
import 'package:lightpay/presentation/widgets/transactionfailedwidget.dart';
import 'package:lightpay/presentation/widgets/transactionsuccesswidget.dart';
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
  bool _showTransactionResult = false;

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

          bool pinVerified = await promptUserPinCode(context);

          if (pinVerified == true) {
            setState(() {
              _statusMessage = 'PIN verified. Processing transaction...';
            });
            // this amount here is just for simulation
            final transaction = Transaction(amount: '2000');

            context.read<TransactionBloc>().add(
              TransactionEvent.transactionInitiation(transaction: transaction),
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

  void _restartNFC() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _animationState = NFCAnimationState.scanning;
          _nfcData = '';
          _statusMessage = 'Hold your device near an NFC tag or card';
          _showTransactionResult = false;
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

  // Widget _buildTransactionSuccessWidget(AppResponse<Map<String, dynamic>> responseData) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       // Success Animation
  //       TweenAnimationBuilder(
  //         duration: const Duration(milliseconds: 800),
  //         tween: Tween<double>(begin: 0.0, end: 1.0),
  //         builder: (context, double value, child) {
  //           return Transform.scale(
  //             scale: value,
  //             child: Container(
  //               width: 120,
  //               height: 120,
  //               decoration: BoxDecoration(
  //                 gradient: const LinearGradient(
  //                   colors: [Color(0xFF4CAF50), Color(0xFF45A049)],
  //                   begin: Alignment.topLeft,
  //                   end: Alignment.bottomRight,
  //                 ),
  //                 shape: BoxShape.circle,
  //                 boxShadow: [
  //                   BoxShadow(
  //                     color: const Color(0xFF4CAF50).withOpacity(0.3),
  //                     blurRadius: 20,
  //                     spreadRadius: 5,
  //                     offset: const Offset(0, 8),
  //                   ),
  //                 ],
  //               ),
  //               child: const Icon(
  //                 Icons.check,
  //                 size: 60,
  //                 color: Colors.white,
  //               ),
  //             ),
  //           );
  //         },
  //       ),

  //       const SizedBox(height: 32),

  //       // Success Title
  //       TweenAnimationBuilder(
  //         duration: const Duration(milliseconds: 600),
  //         tween: Tween<double>(begin: 0.0, end: 1.0),
  //         builder: (context, double value, child) {
  //           return Opacity(
  //             opacity: value,
  //             child: Transform.translate(
  //               offset: Offset(0, 20 * (1 - value)),
  //               child: const Text(
  //                 'Payment Successful!',
  //                 style: TextStyle(
  //                   fontSize: 28,
  //                   fontWeight: FontWeight.bold,
  //                   color: Color(0xFF4CAF50),
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
  //           );
  //         },
  //       ),

  //       const SizedBox(height: 16),

  //       // Success Message
  //       TweenAnimationBuilder(
  //         duration: const Duration(milliseconds: 800),
  //         tween: Tween<double>(begin: 0.0, end: 1.0),
  //         builder: (context, double value, child) {
  //           return Opacity(
  //             opacity: value,
  //             child: Transform.translate(
  //               offset: Offset(0, 20 * (1 - value)),
  //               child: const Text(
  //                 'Your transaction has been processed successfully.',
  //                 style: TextStyle(
  //                   fontSize: 16,
  //                   color: Color(0xFF666666),
  //                   height: 1.5,
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
  //           );
  //         },
  //       ),

  //       const SizedBox(height: 32),

  //       // Transaction Details Card
  //       TweenAnimationBuilder(
  //         duration: const Duration(milliseconds: 1000),
  //         tween: Tween<double>(begin: 0.0, end: 1.0),
  //         builder: (context, double value, child) {
  //           return Opacity(
  //             opacity: value,
  //             child: Transform.translate(
  //               offset: Offset(0, 30 * (1 - value)),
  //               child: Container(
  //                 width: double.infinity,
  //                 padding: const EdgeInsets.all(24),
  //                 decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(16),
  //                   border: Border.all(
  //                     color: const Color(0xFF4CAF50).withOpacity(0.2),
  //                     width: 1,
  //                   ),
  //                   boxShadow: [
  //                     BoxShadow(
  //                       color: Colors.black.withOpacity(0.08),
  //                       blurRadius: 16,
  //                       offset: const Offset(0, 4),
  //                     ),
  //                   ],
  //                 ),
  //                 child: Column(
  //                   children: [
  //                     // Amount
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(
  //                           'Amount',
  //                           style: TextStyle(
  //                             fontSize: 16,
  //                             color: Colors.grey.shade600,
  //                             fontWeight: FontWeight.w500,
  //                           ),
  //                         ),
  //                         const Text(
  //                           '\$20.00',
  //                           style: TextStyle(
  //                             fontSize: 20,
  //                             fontWeight: FontWeight.bold,
  //                             color: Color(0xFF333333),
  //                           ),
  //                         ),
  //                       ],
  //                     ),

  //                     const SizedBox(height: 16),
  //                     Divider(color: Colors.grey.shade200),
  //                     const SizedBox(height: 16),

  //                     // Transaction ID
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(
  //                           'Transaction ID',
  //                           style: TextStyle(
  //                             fontSize: 14,
  //                             color: Colors.grey.shade600,
  //                           ),
  //                         ),
  //                         Text(
  //                           '#${DateTime.now().millisecondsSinceEpoch.toString().substring(8)}',
  //                           style: const TextStyle(
  //                             fontSize: 14,
  //                             fontFamily: 'monospace',
  //                             color: Color(0xFF333333),
  //                             fontWeight: FontWeight.w500,
  //                           ),
  //                         ),
  //                       ],
  //                     ),

  //                     const SizedBox(height: 12),

  //                     // Date & Time
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(
  //                           'Date & Time',
  //                           style: TextStyle(
  //                             fontSize: 14,
  //                             color: Colors.grey.shade600,
  //                           ),
  //                         ),
  //                         Text(
  //                           '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year} ${DateTime.now().hour}:${DateTime.now().minute.toString().padLeft(2, '0')}',
  //                           style: const TextStyle(
  //                             fontSize: 14,
  //                             color: Color(0xFF333333),
  //                             fontWeight: FontWeight.w500,
  //                           ),
  //                         ),
  //                       ],
  //                     ),

  //                     const SizedBox(height: 12),

  //                     // Status
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(
  //                           'Status',
  //                           style: TextStyle(
  //                             fontSize: 14,
  //                             color: Colors.grey.shade600,
  //                           ),
  //                         ),
  //                         Container(
  //                           padding: const EdgeInsets.symmetric(
  //                             horizontal: 12,
  //                             vertical: 4,
  //                           ),
  //                           decoration: BoxDecoration(
  //                             color: const Color(0xFF4CAF50).withOpacity(0.1),
  //                             borderRadius: BorderRadius.circular(12),
  //                           ),
  //                           child: const Text(
  //                             'Completed',
  //                             style: TextStyle(
  //                               fontSize: 12,
  //                               color: Color(0xFF4CAF50),
  //                               fontWeight: FontWeight.w600,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           );
  //         },
  //       ),

  //       const SizedBox(height: 32),

  //       // Action Buttons
  //       TweenAnimationBuilder(
  //         duration: const Duration(milliseconds: 1200),
  //         tween: Tween<double>(begin: 0.0, end: 1.0),
  //         builder: (context, double value, child) {
  //           return Opacity(
  //             opacity: value,
  //             child: Transform.translate(
  //               offset: Offset(0, 20 * (1 - value)),
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     child: OutlinedButton.icon(
  //                       onPressed: () {
  //                         // Handle receipt/share functionality
  //                       },
  //                       icon: const Icon(Icons.receipt_outlined),
  //                       label: const Text('Receipt'),
  //                       style: OutlinedButton.styleFrom(
  //                         padding: const EdgeInsets.symmetric(vertical: 16),
  //                         side: const BorderSide(color: Color(0xFF4CAF50)),
  //                         foregroundColor: const Color(0xFF4CAF50),
  //                         shape: RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(12),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   const SizedBox(width: 16),
  //                   Expanded(
  //                     child: ElevatedButton.icon(
  //                       onPressed: () {
  //                         setState(() {
  //                           _showTransactionResult = false;
  //                         });
  //                         _restartNFC();
  //                       },
  //                       icon: const Icon(Icons.refresh),
  //                       label: const Text('New Payment'),
  //                       style: ElevatedButton.styleFrom(
  //                         backgroundColor: const Color(0xFF4CAF50),
  //                         foregroundColor: Colors.white,
  //                         padding: const EdgeInsets.symmetric(vertical: 16),
  //                         elevation: 0,
  //                         shape: RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(12),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //         },
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildTransactionFailedWidget(String errorMessage) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       // Error Animation
  //       TweenAnimationBuilder(
  //         duration: const Duration(milliseconds: 800),
  //         tween: Tween<double>(begin: 0.0, end: 1.0),
  //         builder: (context, double value, child) {
  //           return Transform.scale(
  //             scale: value,
  //             child: Container(
  //               width: 120,
  //               height: 120,
  //               decoration: BoxDecoration(
  //                 gradient: const LinearGradient(
  //                   colors: [Color(0xFFE57373), Color(0xFFEF5350)],
  //                   begin: Alignment.topLeft,
  //                   end: Alignment.bottomRight,
  //                 ),
  //                 shape: BoxShape.circle,
  //                 boxShadow: [
  //                   BoxShadow(
  //                     color: const Color(0xFFE57373).withOpacity(0.3),
  //                     blurRadius: 20,
  //                     spreadRadius: 5,
  //                     offset: const Offset(0, 8),
  //                   ),
  //                 ],
  //               ),
  //               child: const Icon(
  //                 Icons.close,
  //                 size: 60,
  //                 color: Colors.white,
  //               ),
  //             ),
  //           );
  //         },
  //       ),

  //       const SizedBox(height: 32),

  //       // Error Title
  //       const Text(
  //         'Transaction Failed',
  //         style: TextStyle(
  //           fontSize: 28,
  //           fontWeight: FontWeight.bold,
  //           color: Color(0xFFE57373),
  //         ),
  //         textAlign: TextAlign.center,
  //       ),

  //       const SizedBox(height: 16),

  //       // Error Message
  //       Text(
  //         errorMessage,
  //         style: const TextStyle(
  //           fontSize: 16,
  //           color: Color(0xFF666666),
  //           height: 1.5,
  //         ),
  //         textAlign: TextAlign.center,
  //       ),

  //       const SizedBox(height: 32),

  //       // Retry Button
  //       SizedBox(
  //         width: double.infinity,
  //         child: ElevatedButton.icon(
  //           onPressed: () {
  //             setState(() {
  //               _showTransactionResult = false;
  //             });
  //             _restartNFC();
  //           },
  //           icon: const Icon(Icons.refresh),
  //           label: const Text('Try Again'),
  //           style: ElevatedButton.styleFrom(
  //             backgroundColor: const Color(0xFF2196F3),
  //             foregroundColor: Colors.white,
  //             padding: const EdgeInsets.symmetric(vertical: 16),
  //             elevation: 0,
  //             shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(12),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

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
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "NFC Payment",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2196F3),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: BlocConsumer<TransactionBloc, TransactionState>(
          listener: (context, state) {
            state.maybeWhen(
              paymentinitiationSuccessfull: (response) {
                setState(() {
                  _showTransactionResult = true;
                  _statusMessage = 'Transaction completed successfully!';
                });
              },
              paymentinitiationFailed: (errorMessage) {
                setState(() {
                  _showTransactionResult = true;
                  _statusMessage = 'Transaction failed: $errorMessage';
                  _animationState = NFCAnimationState.error;
                });
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                // Header Section - Only show when not showing transaction result
                if (!_showTransactionResult)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFF2196F3),
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
                    child: state.maybeWhen(
                      // Show loading state
                      loadinpaymentinitiation: () => const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFF2196F3),
                              ),
                            ),
                            SizedBox(height: 24),
                            Text(
                              'Processing your payment...',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF333333),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Show success state
                      paymentinitiationSuccessfull: (response) => TransactionSuccessWidget(responseData: response, showTransactionResult: _showTransactionResult, onRestartfunc: _restartNFC),
                          // _buildTransactionSuccessWidget(response.data ?? {}),
                      // Show error state
                      paymentinitiationFailed: (errorMessage) => TransactionFailedWidget(errorMessage: errorMessage, showTransactionResult: _showTransactionResult, onRestartfunc: _restartNFC),
                          // _buildTransactionFailedWidget(errorMessage),
                      // Default NFC scanning state
                      orElse: () => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // NFC Animation Section - Using the reusable widget
                          SizedBox(
                            width: screenWidth * 0.9,
                            height: screenHeight * 0.35,
                            child: Center(
                              child: NFCAnimationController(
                                state: _animationState,
                                size: 280,
                                primaryColor: const Color(0xFF2196F3),
                                successColor: Colors.green,
                                errorColor: const Color.fromARGB(
                                  255,
                                  134,
                                  53,
                                  47,
                                ),
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
                              color:
                                  _animationState == NFCAnimationState.success
                                      ? Colors.green
                                      : _animationState ==
                                              NFCAnimationState.error
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
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}