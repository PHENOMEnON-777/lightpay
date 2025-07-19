import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';

Future<bool> promptUserPinCode(BuildContext context,) async {
  final screenHeight = MediaQuery.of(context).size.height;
  final storage = FlutterSecureStorage();
  final storedPin = await storage.read(key: 'pin_code');
  String enteredPin = '';
  final shuffledDigits = generateShuffledDigitsGrid();
  bool isAuthenticated = false;
  LocalAuthentication auth = LocalAuthentication();


  return await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return SizedBox(
      
        child: AlertDialog(
          // title: const Text("PIN code or Biometric"),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(" pin code or user biometric"),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: index < enteredPin.length ? Colors.blue : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 24),
                  _buildNumberPad(shuffledDigits, setState, (digit) {
                    HapticFeedback.lightImpact();
                    if (enteredPin.length < 4) {
                      setState(() => enteredPin += digit);
                    }
                  }, () {
                    HapticFeedback.selectionClick();
                    if (enteredPin.isNotEmpty) {
                      setState(() => enteredPin = enteredPin.substring(0, enteredPin.length - 1));
                    }
                  }),
                ],
              );
            },
          ),
          actions: [
            IconButton(onPressed: ()async{
              if(!isAuthenticated){
                final bool canautheicatewithbiometric = await auth.canCheckBiometrics;
                if(canautheicatewithbiometric){
                  final bool didauthenticate = await auth.authenticate(localizedReason: 'please authenticate',options: AuthenticationOptions(biometricOnly: true));
                  isAuthenticated = didauthenticate;
                  Navigator.of(context).pop(isAuthenticated);
                }
              }
              else{
                isAuthenticated = false;
              }
            }, icon: Icon(Icons.fingerprint,size: 30,)),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (enteredPin == storedPin) {
                  Navigator.of(context).pop(true);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("invalied pin code."),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text("Verify"),
            ),
          ],
        ),
      );
    },
  ) ?? false;
}

Widget _buildNumberPad(
  List<List<String>> digitsGrid,
  void Function(void Function()) setState,
  void Function(String digit) onDigitPressed,
  VoidCallback onBackspacePressed,
) {
  return Column(
    children: digitsGrid.map((row) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: row.map((digit) {
            if (digit == '') {
              return const SizedBox(width: 60);
            } else if (digit == '<') {
              return _buildPinButton(
                icon: Icons.backspace,
                onTap: onBackspacePressed,
              );
            } else {
              return _buildPinButton(
                label: digit,
                onTap: () => onDigitPressed(digit),
              );
            }
          }).toList(),
        ),
      );
    }).toList(),
  );
}

Widget _buildPinButton({String? label, IconData? icon, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      // margin: const EdgeInsets.all(6),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(color: Colo),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: icon != null
          ? Icon(icon, color: Colors.blue)
          : Text(
              label ?? '',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
    ),
  );
}

List<List<String>> generateShuffledDigitsGrid() {
  final digits = List<String>.generate(10, (i) => i.toString())..shuffle(Random());
  return [
    digits.sublist(0, 3),
    digits.sublist(3, 6),
    digits.sublist(6, 9),
    ['', digits[9], '<'],
  ];
}
