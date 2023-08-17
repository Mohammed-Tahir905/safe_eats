// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:safe_eats/components/my_button.dart';
//
// import '../constant.dart';
//
// class VerificationScreen extends StatefulWidget {
//   const VerificationScreen({Key? key}) : super(key: key);
//
//   @override
//   State<VerificationScreen> createState() => _VerificationScreenState();
// }
//
// class _VerificationScreenState extends State<VerificationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: white,
//         body: Column(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const SizedBox(
//                   height: 40,
//                 ),
//                   Text(
//                     'Verification',
//                     style: TextStyle(
//                       fontSize: 45,
//                       fontFamily: ' ',
//                       fontWeight: FontWeight.bold,
//                       color: green,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'Enter The Code Sent to the mail',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontFamily: ' ',
//                       //fontWeight: FontWeight.bold,
//                       color: black,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Abc@gmail.com',
//                     style: TextStyle(
//                       fontSize: 19,
//                       fontFamily: ' ',
//                       fontWeight: FontWeight.bold,
//                       color: black,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40),
//                 child: Column(
//                   children: [
//                     PinCodeTextField(
//                       appContext: (context),
//                       length: 4,
//                       keyboardType: TextInputType.number,
//                       obscureText: true,
//                       //obscuringCharacter: '*',
//                       obscuringWidget:Icon(Icons.circle,color: green,),
//                       enabled: true,
//                       pinTheme: PinTheme(
//                         shape: PinCodeFieldShape.box,
//                         borderRadius: BorderRadius.circular(8),
//                         fieldHeight: 60,
//                         fieldWidth: 50,
//                         activeColor: Colors.green,
//                         inactiveFillColor: Colors.red,
//                         inactiveColor:black,
//                         selectedColor:ngreen,
//                       ),
//                         onChanged: (value) {},
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     MyButton(title: 'Verify', onPress: (){}),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const Text(
//                           "Didn't receive the code?",
//                           style: TextStyle(
//                               fontSize: 17,
//                               fontFamily: '',
//                               color: Colors.redAccent),
//                         ),
//                         InkWell(
//                           onTap:(){
//                           },
//                           child: Text(
//                             ' Resend',
//                             style: TextStyle(
//                                 decoration: TextDecoration.underline,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: '',
//                                 color: green),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:safe_eats/components/my_button.dart';

import '../constant.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double fontSize = screenHeight * 0.055;

    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: green,
                    ),
                  ),
                  SizedBox(
                    height: 0.010 * screenHeight,
                  ),
                  Text(
                    'Enter The Code Sent to the mail',
                    style: TextStyle(
                      fontSize: 0.022 * screenHeight,
                      color: black,
                    ),
                  ),
                  SizedBox(
                    height: 0.015 * screenHeight,
                  ),
                  Text(
                    'Abc@gmail.com',
                    style: TextStyle(
                      fontSize: 0.028 * screenHeight,
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
                  ),
                  SizedBox(
                    height: 0.025 * screenHeight,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 0.03 * screenHeight,
                ),
                child: Column(
                  children: [
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      obscuringWidget: Icon(Icons.circle, color: green),
                      enabled: true,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(0.02 * screenHeight),
                        fieldHeight: 0.1 * screenHeight,
                        fieldWidth: 0.08 * screenHeight,
                        activeColor: Colors.green,
                        inactiveFillColor: Colors.red,
                        inactiveColor: black,
                        selectedColor: green,
                      ),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 0.08 * screenHeight,
                    ),
                    MyButton(title: 'Verify', onPress: () {}),
                    SizedBox(
                      height: 0.03 * screenHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive the code?",
                          style: TextStyle(
                            fontSize: 0.020 * screenHeight,
                            color: Colors.redAccent,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            ' Resend',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 0.020 * screenHeight,
                              fontWeight: FontWeight.bold,
                              color: green,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
