import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';

class TransactionSuccessWidget extends StatefulWidget {
  final AppResponse<Map<String, dynamic>> responseData;
  
  const TransactionSuccessWidget({
    Key? key,
    required this.responseData,
  }) : super(key: key);

  @override
  State<TransactionSuccessWidget> createState() => _TransactionSuccessWidgetState();
}

class _TransactionSuccessWidgetState extends State<TransactionSuccessWidget> {
  
  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'completed':
      case 'success':
        return const Color(0xFF4CAF50);
      case 'pending':
        return const Color(0xFFFF9800);
      case 'failed':
      case 'error':
        return const Color(0xFFE53E3E);
      default:
        return const Color(0xFF666666);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    // Extract data from the response
    final responseData = widget.responseData.data;
    final transactionId = responseData?['id']?.toString() ?? 'N/A';
    final amount = responseData?['amount']?.toString() ?? '0.00';
    final status = responseData?['status']?.toString() ?? 'Unknown';
    final createdAt = responseData?['created_at']?.toString() ?? '';
    final transactionType = responseData?['type']?.toString() ?? 'payment';
    final receiverId = responseData?['receiver_id']?.toString() ?? 'N/A';
    final successMessage = widget.responseData.message;
    
    // Parse and format the date
    DateTime? transactionDate;
    try {
      if (createdAt.isNotEmpty) {
        transactionDate = DateTime.parse(createdAt);
      }
    } catch (e) {
      transactionDate = DateTime.now();
    }
    
    final formattedDate = transactionDate != null
        ? '${transactionDate.day}/${transactionDate.month}/${transactionDate.year} ${transactionDate.hour}:${transactionDate.minute.toString().padLeft(2, '0')}'
        : 'N/A';

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Success Animation
           widget.responseData.success == false ? 
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
                        colors: [Color.fromARGB(255, 44, 34, 180), Color.fromARGB(255, 44, 34, 180)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.info,
                      size: 60,
                      // color: Colors.white,
                    ),
                  ),
                );
              },
            )
            :TweenAnimationBuilder(
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
                        colors: [Color(0xFF4CAF50), Color(0xFF45A049)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF4CAF50).withOpacity(0.3),
                          blurRadius: 20,
                          spreadRadius: 5,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 60,
                      // color: Colors.white,
                    ),
                  ),
                );
              },
            ),
        
            const SizedBox(height: 32),
        
            const SizedBox(height: 16),
        
            // Success Message
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 800),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 20 * (1 - value)),
                    child: Text(
                      successMessage,
                      style:  TextStyle(
                        fontSize: 16,
                     color: Theme.of(context).colorScheme.onSecondary,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            // Transaction Details Card
           widget.responseData.success == false ? SizedBox.shrink() : TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1000),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 30 * (1 - value)),
                    child: Center(
                      child: Container(
                        width: screenWidth * 0.9,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: const Color(0xFF4CAF50).withOpacity(0.2),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 16,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Amount
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Amount',
                                  style: TextStyle(
                                    fontSize: 16,
                                    // color: Colors.grey.shade600,
                                    color: Theme.of(context).colorScheme.onSecondary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  amount,
                                  style:  TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onSecondary,

                                  ),
                                ),
                              ],
                            ),
                            
                            const SizedBox(height: 16),
                            Divider(color: Colors.grey.shade200),
                            const SizedBox(height: 16),
                            
                            // Transaction ID
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Transaction ID',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  '#$transactionId',
                                  style:  TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'monospace',
                                      color: Theme.of(context).colorScheme.onSecondary,

                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            
                            const SizedBox(height: 12),
                            
                            // Date & Time
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date & Time',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  formattedDate,
                                  style:  TextStyle(
                                    fontSize: 14,
                                     color: Theme.of(context).colorScheme.onSecondary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            
                            // Transaction Type
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Type',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  transactionType.toUpperCase(),
                                  style:  TextStyle(
                                    fontSize: 14,
                                     color: Theme.of(context).colorScheme.onSecondary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            
                            // Receiver ID (if available)
                            if (receiverId != 'N/A' && receiverId != 'null') ...[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Receiver ID',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  Text(
                                    receiverId,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                            ],
                            
                            // Status
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Status',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: _getStatusColor(status).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    status,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: _getStatusColor(status),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1200),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 20 * (1 - value)),
                    child: ElevatedButton(
                      onPressed: () {
                        // Reset the transaction state and go back
                        context.read<TransactionBloc>().add(TransactionEvent.reset());
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2196F3),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'New action',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                         color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}