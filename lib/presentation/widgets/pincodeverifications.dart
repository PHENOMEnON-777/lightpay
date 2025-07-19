// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return  showDialog<bool>(
//     context: context,
//     barrierDismissible: false,
//     builder: (context) {
//       return SizedBox(
      
//         child: AlertDialog(
//           title: const Text("PIN code required"),
//           content: StatefulBuilder(
//             builder: (context, setState) {
//               return Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Text("Enter your pin code for verification"),
//                   const SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(4, (index) {
//                       return Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 6),
//                         width: 16,
//                         height: 16,
//                         decoration: BoxDecoration(
//                           color: index < enteredPin.length ? Colors.blue : Colors.grey,
//                           shape: BoxShape.circle,
//                         ),
//                       );
//                     }),
//                   ),
//                   const SizedBox(height: 24),
//                   _buildNumberPad(shuffledDigits, setState, (digit) {
//                     HapticFeedback.lightImpact();
//                     if (enteredPin.length < 4) {
//                       setState(() => enteredPin += digit);
//                     }
//                   }, () {
//                     HapticFeedback.selectionClick();
//                     if (enteredPin.isNotEmpty) {
//                       setState(() => enteredPin = enteredPin.substring(0, enteredPin.length - 1));
//                     }
//                   }),
//                 ],
//               );
//             },
//           ),
//           actions: [
            
//             IconButton(onPressed: ()async{
//               if(!isAuthenticated){
//                 final bool canautheicatewithbiometric = await auth.canCheckBiometrics;
//                 if(canautheicatewithbiometric){
//                   final bool didauthenticate = await auth.authenticate(localizedReason: 'please authenticate',options: AuthenticationOptions(biometricOnly: true));
                  
//                 }
//               }
//             }, icon: Icon(Icons.fingerprint_sharp,size: 30,)),
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(false),
//               child: const Text("Cancel"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (enteredPin == storedPin) {
//                   Navigator.of(context).pop(true);
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text("invalied pin code."),
//                       backgroundColor: Colors.red,
//                     ),
//                   );
//                 }
//               },
//               child: const Text("Verify"),
//             ),
//           ],
//         ),
//       );
//     },
//   );
//   }
// }