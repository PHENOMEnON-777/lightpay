import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/presentation/widgets/pincodeverification.dart';
import 'package:mobile_scanner/mobile_scanner.dart';


class QRcodePaymentScreen extends StatefulWidget {
  const QRcodePaymentScreen({super.key});

  @override
  State<QRcodePaymentScreen> createState() => _QRcodePaymentScreenState();
}

class _QRcodePaymentScreenState extends State<QRcodePaymentScreen>
    with TickerProviderStateMixin {


  late final MobileScannerController cameraController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    cameraController = MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
      returnImage: true,
      detectionTimeoutMs: Duration.microsecondsPerMillisecond,
    );
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
  }

// @override
//   void didChangeDependencies() {
//    _restartNFC();
//    _startNFC();
//     super.didChangeDependencies();
//   }
  @override
  void dispose() {
    _animationController.dispose();
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          'QR code Payment',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: BlocConsumer<TransactionBloc, TransactionState>(
        listener: (context, state) {
           if(state is PaymentInitiationSuccessfull){
              Navigator.of(context).pushNamed(Pagenavigation.payedsuccessfully,arguments:state.response);
                    _showSuccessSnackBar(context);
            }
             if(state is PaymentInitiationFailed){
              Navigator.of(context).pushNamed(Pagenavigation.paymentFailed,arguments:state.errormessga);
            }
        },
        builder: (context, state) {
              return Stack(
            children: [
              // Camera view (full screen)
              Positioned.fill(
                child: MobileScanner(
                  controller: cameraController,
                  onDetectError: (error, stackTrace) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Scanner Error: ${error.toString()}'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  onDetect: (capture) {
                    final List<Barcode> barcodes = capture.barcodes;
                    // final Uint8List? image = capture.image;
                    if (barcodes.isNotEmpty) {
                      cameraController.stop();
                      _showPaymentDialog(context, barcodes.first);
                    }
                  },
                ),
              ),

              // Overlay with scanning area
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Stack(
                    children: [
                      // Create the scanning window
                      Center(
                        child: Container(
                          width:screenWidth * 0.69,
                          height: screenHeight * 0.31,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(0.8),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.transparent),
                          ),
                        ),
                      ),
                      // Corner decorations for the scanning frame
                      Center(
                        child: SizedBox(
                          width:screenWidth * 0.69,
                          height: screenHeight * 0.31,
                          child: Stack(
                            children: [
                              // Top-left corner
                              Positioned(
                                top: -2,
                                left: -2,
                                child: Container(
                                  width: screenWidth * 0.075,
                                  height:screenHeight * 0.039,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width:screenWidth *  0.01,
                                      ),
                                      left: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width:screenWidth *  0.01,
                                      ),
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              // Top-right corner
                              Positioned(
                                top: -2,
                                right: -2,
                                child: Container(
                                  width: screenWidth * 0.075,
                                  height:screenHeight * 0.039,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width:screenWidth *  0.01,
                                      ),
                                      right: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width:screenWidth *  0.01,
                                      ),
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              // Bottom-left corner
                              Positioned(
                                bottom: -2,
                                left: -2,
                                child: Container(
                                  width: screenWidth * 0.075,
                                  height:screenHeight * 0.039,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width:screenWidth *  0.01,
                                      ),
                                      left: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                       width:screenWidth *  0.01,
                                      ),
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              // Bottom-right corner
                              Positioned(
                                bottom: -2,
                                right: -2,
                                child: Container(
                                  width: screenWidth * 0.075,
                                  height:screenHeight * 0.039,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width:screenWidth *  0.01,
                                      ),
                                      right: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width:screenWidth *  0.01,
                                      ),
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Animated scanning line
                      Center(
                        child: SizedBox(
                          width:screenWidth * 0.69,
                          height: screenHeight * 0.31,
                          child: Stack(
                            children: [
                              AnimatedBuilder(
                                animation: _animation,
                                builder: (context, child) {
                                  return Positioned(
                                    top: _animation.value * 220 + 15,
                                    left: 15,
                                    right: 15,
                                    child: Container(
                                      height: 2,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.transparent,
                                            Theme.of(context).primaryColor,
                                            Colors.transparent,
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Instructions and UI elements
              Positioned(
                top: 80,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.qr_code_scanner,
                            color: Theme.of(context).primaryColor,
                            size: 32,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Center the QR code',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Position the QR code within the frame to scan',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom controls
              Positioned(
                bottom: 60,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildControlButton(
                          icon: Icons.flash_off,
                          label: 'Flash',
                          onTap: () => cameraController.toggleTorch(),
                        ),
                        _buildControlButton(
                          icon: Icons.flip_camera_ios,
                          label: 'Flip',
                          onTap: () => cameraController.switchCamera(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 8),
                          Text(
                            'Secure payment processing',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
        
      );},
    ));
  }

  Widget _buildControlButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white.withOpacity(0.3)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white, size: 24),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentDialog(BuildContext context, Barcode barcode) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Icon(Icons.qr_code, color: Theme.of(context).primaryColor),
              const SizedBox(width: 8),
              const Text('QR Code Detected'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  barcode.rawValue ?? 'No QR Code Value',
                  style:  TextStyle(fontFamily: 'monospace', fontSize: 12,color: Colors.black),
                  textAlign: TextAlign.center,
                  
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    // await Future.delayed(const Duration(milliseconds: 1000));
                    bool pinVerified = await promptUserPinCode(context, () {});
                    if (pinVerified == true) {
                      final transaction = Transaction(amount: 2000);
                      context.read<TransactionBloc>().add(
                        TransactionEvent.transactionInitiation(
                          transaction: transaction,
                        ),
                      );
                    }
                    Navigator.of(context).pop();

                  },
                  label: const Text('Pay Now'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                cameraController.start();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    ).then((_) {
      // Restart camera when dialog is dismissed
      cameraController.start();
    });
  }

  void _showSuccessSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white),
            SizedBox(width: 8),
            Text('Payment authentication initiated'),
          ],
        ),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
