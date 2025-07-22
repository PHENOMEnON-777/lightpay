// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/presentation/widgets/nfcanimationwidget.dart';

class TransactionFailedWidget extends StatefulWidget {
  final String errorMessage;
  final Function onRestartfunc;
 const TransactionFailedWidget({
    Key? key,
    required this.errorMessage,
    required this.onRestartfunc,
  }) : super(key: key);

  @override
  State<TransactionFailedWidget> createState() => _TransactionFailedWidgetState();
}

class _TransactionFailedWidgetState extends State<TransactionFailedWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        const Text(
          'Transaction Failed',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFFE57373),
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
            // context.read<TransactionBloc>().add(TransactionEvent.reset());
                          setState(() {
                            context.read<TransactionBloc>().add(TransactionEvent.reset());
                          widget.onRestartfunc;
                            NFCAnimationState.scanning;
                          });
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
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
    );
  }
}