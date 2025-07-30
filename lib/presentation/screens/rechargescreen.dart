import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/data/model/recharge/recharge.dart';
import 'package:lightpay/logic/bloc/rechargebloc/Recharge/Recharge_bloc.dart';

enum PaymentOperator { orangeMoney, mtnMoney }

class RechargeScreen extends StatefulWidget {
  const RechargeScreen({super.key});

  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen>  {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final  _phoneController = TextEditingController();
  PaymentOperator _selectedOperator = PaymentOperator.orangeMoney;

  // Add focus nodes for better control
  final _amountFocusNode = FocusNode();
  final _phoneFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Unfocus and dispose of focus nodes
    _phoneController.dispose();
    _amountFocusNode.unfocus();
    _phoneFocusNode.unfocus();
    _amountFocusNode.dispose();
    _phoneFocusNode.dispose();
    _amountController.dispose();
    
    // Additional safety: unfocus the entire scope
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusManager.instance.primaryFocus?.unfocus();
    });
    
    super.dispose();
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      // Unfocus all fields before proceeding
      FocusScope.of(context).unfocus();
      
      final phone = _phoneController.text;

      final recharge = Recharge( 
        amount: double.parse(_amountController.text), 
        phone: phone, 
        provider: _selectedOperator == PaymentOperator.orangeMoney ? 'Orange'  : 'MoMo', 
      );
      context.read<RechargeBloc>().add(RechargeEvent.recharge(recharge: recharge));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RechargeBloc, RechargeState>(
      listener: (context, state) {
        if(state is RechargedSuccessfully){
          Navigator.of(context).pushNamed(Pagenavigation.payedsuccessfully,arguments: state.recharge);
        }
        if(state is RechargeFailed){
          Navigator.of(context).pushNamed(Pagenavigation.paymentFailed,arguments: state.errormessage);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Recharge"),
            backgroundColor: Colors.blue,
          ),
          // Add GestureDetector to dismiss keyboard when tapping outside
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const SizedBox(height: 30),

                    /// Amount field
                    TextFormField(
                      controller: _amountController,
                      focusNode: _amountFocusNode, // Add focus node
                      keyboardType: TextInputType.number,
                      decoration:  InputDecoration(
                        filled: true,
                        labelText: 'Amount (XAF)',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter an amount';
                        }
                        final amount = double.tryParse(value);
                        if (amount == null || amount <= 0) {
                          return 'invalid amount';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    IntlPhoneField(
                      focusNode: _phoneFocusNode, // Add focus node
                      initialCountryCode: 'CM', 
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'phone number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.phone_android),
                      ),
                      initialValue: _phoneController.text,
                      onChanged: (phone) {
                        _phoneController.text = phone.completeNumber;
                      },
                      validator: (phone) {
                        if (phone == null || phone.number.isEmpty) {
                          return 'Enter a phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    Text(
                      'payment Services',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        _buildOperatorOption(
                          value: PaymentOperator.orangeMoney,
                          label: 'Orange Money',
                          imagePath: 'lib/presentation/assets/images/orange_money_logo.png',
                          bgColor: const Color(0xFFFFF3E0),
                          borderColor: Colors.deepOrange,
                        ),
                        _buildOperatorOption(
                          value: PaymentOperator.mtnMoney,
                          label: 'MTN Money',
                          imagePath: 'lib/presentation/assets/images/mtn_money_logo.png',
                          bgColor: const Color(0xFFFFFDE7),
                          borderColor: Colors.amber[800]!,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.send),
                        label: state is LoadingRecharge ? CircularProgressIndicator(strokeWidth: 2,) : Text(
                          'Recharge with ${_selectedOperator == PaymentOperator.orangeMoney ? 'Orange Money' : 'MTN Money'}',
                        ),
                        onPressed: () => _submit(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildOperatorOption({
    required PaymentOperator value,
    required String label,
    required String imagePath,
    required Color bgColor,
    required Color borderColor,
  }) {
    final isSelected = _selectedOperator == value;

    return Card(
      color: bgColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: isSelected ? borderColor : Colors.transparent, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: RadioListTile<PaymentOperator>(
        value: value,
        groupValue: _selectedOperator,
        onChanged: (val) => setState(() => _selectedOperator = val!),
        activeColor: borderColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        title: Row(
          children: [
            Image.asset(imagePath, width: 36, height: 36),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                label,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}