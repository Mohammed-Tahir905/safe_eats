// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:safe_eats/components/my_button2.dart';
// import 'package:safe_eats/constant.dart';
//
// class ScanScreen extends StatefulWidget {
//   const ScanScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ScanScreen> createState() => _ScanScreenState();
// }
//
// class _ScanScreenState extends State<ScanScreen> {
//   String scanResult='';
//
//   Future scanBarcode() async {
//     try {
//       scanResult = await FlutterBarcodeScanner.scanBarcode(
//           'green', 'CANCEL', true, ScanMode.BARCODE);
//     } on PlatformException {
//       scanResult = "Failed to get Platform Version";
//     }
//     if (!mounted) return;
//     setState(() {
//       this.scanResult = scanResult;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: green,
//         body: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                   flex: 5,
//                   child: Container(
//                     height: 600,
//                     child: Column(
//                       children: [
//                         const Image(
//                           image: AssetImage('assets/barcode_scanner.png'),
//                           height: 400,
//                           width: 400,
//                         ),
//                        const SizedBox(
//                           height: 25,
//                         ),
//                         MyButton2(
//                             title: 'Scan Barcode',
//                             onPress: () {
//                               scanBarcode();
//                             },
//                             imageIcon: 'assets/barcode.png'),
//                         const SizedBox(
//                           height:10,
//                         ),
//                         Text(scanResult,style: const TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   )),
//               Expanded(
//                   flex: 2,
//                   child: Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: black,
//                           blurRadius: 6,
//                         )
//                       ],
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(50),
//                           topRight: Radius.circular(50)),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Image(
//                             height: 120,
//                             width: 120,
//                             fit: BoxFit.cover,
//                             image: AssetImage('assets/logo.jpg')),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               'Welcome To ',
//                               style: TextStyle(
//                                   fontSize: 24, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               'SafeEats',
//                               style: TextStyle(
//                                   fontSize: 26,
//                                   fontWeight: FontWeight.bold,
//                                   color: green),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ))
//             ],
//           ),
//         ));
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:safe_eats/components/my_button2.dart';
// import 'package:safe_eats/constant.dart';
//
// class ScanScreen extends StatefulWidget {
//   const ScanScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ScanScreen> createState() => _ScanScreenState();
// }
//
// class _ScanScreenState extends State<ScanScreen> {
//   String scanResult = '';
//
//   Future scanBarcode() async {
//     try {
//       scanResult = await FlutterBarcodeScanner.scanBarcode(
//           'green', 'CANCEL', true, ScanMode.BARCODE);
//     } on PlatformException {
//       scanResult = "Failed to get Platform Version";
//     }
//     if (!mounted) return;
//     setState(() {
//       scanResult = scanResult;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double referenceWidth = 400;
//     double referenceHeight = 800;
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     double widthRatio = screenWidth / referenceWidth;
//     double heightRatio = screenHeight / referenceHeight;
//
//     return Scaffold(
//       backgroundColor: green,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               flex: 3,
//               child: Container(
//                 height: referenceHeight * 0.6,
//                 child: Column(
//                   children: [
//                     Image(
//                       image: const AssetImage('assets/barcode_scanner.png'),
//                       height: referenceHeight * 0.45,
//                       width: referenceWidth * 0.9,
//                     ),
//                     SizedBox(
//                       height: referenceHeight * 0.05,
//                     ),
//                     MyButton2(
//                       title: 'Scan Barcode',
//                       onPress: () {
//                         scanBarcode();
//                       },
//                       imageIcon: 'assets/barcode.png',
//                     ),
//                     SizedBox(
//                       height: referenceHeight * 0.01,
//                     ),
//                     Text(
//                       scanResult,
//                       style: TextStyle(
//                         fontSize: 24 * widthRatio,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: black,
//                       blurRadius: 6,
//                     ),
//                   ],
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50 * widthRatio),
//                     topRight: Radius.circular(50 * widthRatio),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image(
//                       height: referenceHeight * 0.15,
//                       width: referenceHeight * 0.15,
//                       fit: BoxFit.cover,
//                       image: const AssetImage('assets/logo.jpg'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Welcome To ',
//                           style: TextStyle(
//                             fontSize: 24 * widthRatio,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'SafeEats',
//                           style: TextStyle(
//                             fontSize: 26 * widthRatio,
//                             fontWeight: FontWeight.bold,
//                             color: green,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:safe_eats/components/my_button2.dart';
import 'package:safe_eats/constant.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String scanResult = '';

  Future scanBarcode() async {
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
          'green', 'CANCEL', true, ScanMode.BARCODE);
    } on PlatformException {
      scanResult = "Failed to get Platform Version";
    }
    if (!mounted) return;
    setState(() {
      this.scanResult = scanResult;
    });
  }

  double getRelativeHeight(BuildContext context, double factor) {
    return MediaQuery.of(context).size.height * factor;
  }

  double getRelativeWidth(BuildContext context, double factor) {
    return MediaQuery.of(context).size.width * factor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: getRelativeHeight(context, 0.6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/barcode_scanner.png'),
                      height: getRelativeHeight(context, 0.4),
                      width: getRelativeWidth(context, 0.8),
                    ),
                    SizedBox(
                      height: getRelativeHeight(context, 0.05),
                    ),
                    MyButton2(
                      title: 'Scan Barcode',
                      onPress: () {
                        scanBarcode();
                      },
                      imageIcon: 'assets/barcode.png',
                    ),
                    SizedBox(
                      height: getRelativeHeight(context, 0.0125),
                    ),
                    Text(
                      scanResult,
                      style: TextStyle(
                        fontSize: getRelativeHeight(context, 0.03),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: black,
                      blurRadius: getRelativeHeight(context, 0.008),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getRelativeHeight(context, 0.067)),
                    topRight: Radius.circular(getRelativeHeight(context, 0.067)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: getRelativeHeight(context, 0.145),
                      width: getRelativeWidth(context, 0.17),
                      fit: BoxFit.cover,
                      image: AssetImage('assets/logo.jpg'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome To ',
                          style: TextStyle(
                            fontSize: getRelativeHeight(context, 0.025),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'SafeEats',
                          style: TextStyle(
                            fontSize: getRelativeHeight(context, 0.022),
                            fontWeight: FontWeight.bold,
                            color: green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
