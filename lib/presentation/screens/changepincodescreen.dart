import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lightpay/data/model/changepincode/changepincode.dart';
import 'package:lightpay/logic/bloc/usermanagementbloc/Usermanagement/Usermanagement_bloc.dart';

class ChangePincodeScreen extends StatefulWidget {
  const ChangePincodeScreen({super.key});

  @override
  State<ChangePincodeScreen> createState() => _ChangePincodeScreenState();
}

class _ChangePincodeScreenState extends State<ChangePincodeScreen> {
  String currentPin = '';
  String newPin = '';
  String confirmPin = '';
  String focusedField = 'current';
  bool isDefaultPin = false;

  @override
  void initState() {
    super.initState();
    _loadStoredPin();
  }

  Future<void> _loadStoredPin() async {
    try {
      const storage = FlutterSecureStorage();
      final storedPin = await storage.read(key: 'pin_code');
      setState(() {
        isDefaultPin = storedPin == null || storedPin == '0000';
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error accessing secure storage')),
      );
    }
  }

  Future<void> _updateStoredPin(String newPin) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(key: 'pin_code', value: newPin);
      setState(() {
        isDefaultPin = newPin == '0000';
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error updating secure storage')),
      );
    }
  }

  void _onNumberPressed(String value) {
    if (!RegExp(r'^\d$').hasMatch(value)) return; // Only accept digits
    setState(() {
      switch (focusedField) {
        case 'current':
          if (currentPin.length < 4) currentPin += value;
          if (currentPin.length == 4) focusedField = 'new';
          break;
        case 'new':
          if (newPin.length < 4) newPin += value;
          if (newPin.length == 4) focusedField = 'confirm';
          break;
        case 'confirm':
          if (confirmPin.length < 4) confirmPin += value;
          break;
      }
    });
  }

  void _onBackspace() {
    setState(() {
      switch (focusedField) {
        case 'confirm':
          if (confirmPin.isNotEmpty) {
            confirmPin = confirmPin.substring(0, confirmPin.length - 1);
          } else {
            focusedField = 'new';
          }
          break;
        case 'new':
          if (newPin.isNotEmpty) {
            newPin = newPin.substring(0, newPin.length - 1);
          } else {
            focusedField = 'current';
          }
          break;
        case 'current':
          if (currentPin.isNotEmpty) {
            currentPin = currentPin.substring(0, currentPin.length - 1);
          }
          break;
      }
    });
  }

  bool _isWeakPin(String pin) {
    return pin == '0000' ||
        RegExp(r'^(\d)\1{3}$').hasMatch(pin) || // e.g., 1111
        RegExp(r'^(?:0123|1234|2345|3456|4567|5678|6789)$')
            .hasMatch(pin); // Sequential
  }

  void _submit() {
    if (currentPin.length != 4 || newPin.length != 4 || confirmPin.length != 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all PIN fields')),
      );
      return;
    }

    if (currentPin == newPin) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('New PIN must be different from current PIN')),
      );
      setState(() {
        newPin = '';
        confirmPin = '';
        focusedField = 'new';
      });
      return;
    }

    if (newPin != confirmPin) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('New PIN and confirmation do not match')),
      );
      setState(() {
        confirmPin = '';
        focusedField = 'confirm';
      });
      return;
    }

    if (_isWeakPin(newPin)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please choose a stronger PIN (avoid repetitive or sequential digits)')),
      );
      setState(() {
        newPin = '';
        confirmPin = '';
        focusedField = 'new';
      });
      return;
    }

    final changepincode = ChangePinCode(
      current_pin_code: currentPin,
      new_pin_code: newPin,
      new_pin_code_confirmation: confirmPin,
    );

    context.read<UsermanagementBloc>().add(UsermanagementEvent.updatepincode(changepincode: changepincode));
  }

  Widget _buildPinField(String label, String value, String field) {
    return GestureDetector(
      onTap: () => setState(() => focusedField = field),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: focusedField == field ? Colors.blue : Colors.grey,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Icon(
              field == 'current'
                  ? Icons.lock_outline
                  : (field == 'new' ? Icons.key_outlined : Icons.repeat_outlined),color: Colors.white,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
            const Spacer(),
            Row(
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(
                    index < value.length ? Icons.circle : Icons.circle_outlined,
                    size: 12,
                    color: index < value.length ? Colors.blue : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKeyboard() {
    final theme = Theme.of(context);
    final isComplete = currentPin.length == 4 && newPin.length == 4 && confirmPin.length == 4;

    return Column(
      children: [
        for (var row in [
          ['1', '2', '3'],
          ['4', '5', '6'],
          ['7', '8', '9'],
          ['<', '0', 'OK'],
        ])
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: row.map((key) {
              final isOkButton = key == 'OK';
              final isDisabled = isOkButton && !isComplete;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: isDisabled
                      ? null
                      : key == '<'
                          ? _onBackspace
                          : key == 'OK'
                              ? _submit
                              : () => _onNumberPressed(key),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: isDisabled ? theme.disabledColor : Colors.blue,
                    // foregroundColor: Colors.white,
                    elevation: isDisabled ? 0 : 3,
                    minimumSize: const Size(60, 60),
                  ),
                  child: isOkButton
                      ? const Icon(Icons.check, size: 24)
                      : key == '<'
                          ? const Icon(Icons.backspace, size: 24)
                          : Text(
                              key,
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                ),
              );
            }).toList(),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor ,
      appBar: AppBar(
      backgroundColor: Theme.of(context).secondaryHeaderColor ,
        title: const Text('Modify PIN Code',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
         height: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryFixed,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
            ),
        child: BlocConsumer<UsermanagementBloc, UsermanagementState>(
          listener: (context, state) {
            if (state is UpdatingUserPincodeSuccessfully) {
              _updateStoredPin(newPin);
              ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text(state.response.message,style: TextStyle(color: Colors.green),)),
              );
              Navigator.pop(context);
            } else if (state is UpdatingUserPincodeFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Failed to modify PIN code',style: TextStyle(color: Colors.red), ),),
              );
              setState(() {
                currentPin = '';
                newPin = '';
                confirmPin = '';
                focusedField = 'current';
              });
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  if (isDefaultPin)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Icon(Icons.info_outline, color: theme.colorScheme.error),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Your PIN is set to a default value. Please change it for security.',
                              style: TextStyle(color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  _buildPinField('Current PIN Code', currentPin, 'current'),
                  _buildPinField('New PIN Code', newPin, 'new'),
                  _buildPinField('Confirm New PIN Code', confirmPin, 'confirm'),
                  const SizedBox(height: 32),
                  if (state is LoadingToUpdateUserPincode)
                    CircularProgressIndicator(strokeWidth: 2, color: theme.primaryColor)
                  else
                    _buildKeyboard(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}