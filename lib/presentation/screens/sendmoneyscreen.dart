import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/data/model/transaction/sendmoney/sendmoney.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/presentation/widgets/pincodeverification.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen>  {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _amountController = TextEditingController();
  
  // Add focus nodes for better control
  final _phoneFocusNode = FocusNode();
  final _amountFocusNode = FocusNode();

  Future<void> _handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      // Unfocus all fields before proceeding
      FocusScope.of(context).unfocus();
      
      final pinVerified = await promptUserPinCode(context, (){});

      if (!pinVerified) {
        return;
      }
      final amount = double.tryParse(_amountController.text.trim()) ?? 0;

      String phone = _phoneController.text.trim();
      if (phone.startsWith('+')) {
        phone = phone.replaceFirst('+', '00');
      }
      final sendmoney = SendMoney(phone: phone, amount: amount,);
      context.read<TransactionBloc>().add(TransactionEvent.sendMoney(sendmoney: sendmoney));
    }
  }

  @override
  void dispose() {
    // Unfocus and dispose of focus nodes
    _phoneController.dispose();
    _phoneFocusNode.unfocus();
    _amountFocusNode.unfocus();
    _phoneFocusNode.dispose();
    _amountFocusNode.dispose();
    _amountController.dispose();
    
    // Additional safety: unfocus the entire scope
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusManager.instance.primaryFocus?.unfocus();
    });
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: BlocConsumer<TransactionBloc, TransactionState>(
            listener: (context, state) {
              if (state is SendMoneySuccessfully) {
                // Unfocus before navigation
                FocusScope.of(context).unfocus();
                Navigator.of(context).pushNamed(Pagenavigation.payedsuccessfully, arguments: state.response);
              } else if (state is SendMoneyFailed) {
                // Unfocus before navigation
                FocusScope.of(context).unfocus();
                Navigator.of(context).pushNamed(Pagenavigation.paymentFailed, arguments: state.errromessage);
              }
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.03),
                          Container(
                            margin: const EdgeInsets.only(bottom: 30),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.outbond_rounded,
                              size: 80,
                              // color: AppColors.primary,
                            ),
                          ),
                          Text('Send money', style: TextStyle(fontSize: 24, color: Colors.white,)),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.09),
                
                    SizedBox(
                      width: screenWidth * 0.9,
                      child: IntlPhoneField(
                        focusNode: _phoneFocusNode, // Add focus node
                        initialCountryCode: 'CM',
                        decoration: InputDecoration(
                          filled: true,
                          labelText: 'receiver\'s number', // Fixed typo
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.phone_android),
                        ),
                        onChanged: (phone) {
                          _phoneController.text = phone.completeNumber;
                        },
                        validator: (phone) {
                          if (phone == null || phone.number.isEmpty) {
                            return 'enter a phone number';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    SizedBox(
                      width: screenWidth * 0.9,
                      child: TextFormField(
                        controller: _amountController,
                        focusNode: _amountFocusNode, // Add focus node
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          labelText: 'Amount',
                          hintText: '5000',
                          prefixIcon: const Icon(Icons.wallet),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Enter an amount';
                          }
                          final parsed = double.tryParse(value.trim());
                          if (parsed == null || parsed <= 0) {
                            return 'invalid amount';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    SizedBox(
                      child: state is LoadingtoSendMoney 
                        ? CircularProgressIndicator(strokeWidth: 2)
                        : SizedBox(
                          width: screenWidth * 0.9,
                          child: ElevatedButton(
                              style: ButtonStyle(),
                              onPressed: _handleSubmit,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      Icon(Icons.send_rounded),
                                    Text('Send'),
                                  ],
                                ),
                              )
                            ),
                        ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}