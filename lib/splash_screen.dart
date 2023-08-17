// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:safe_eats/constant.dart';
// import 'package:safe_eats/utils/routes_name.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     Timer(Duration(seconds:3), () {
//       Navigator.pushNamed(context, RoutesName.LoginScreen);
//     });
//   }
//
//
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           backgroundColor:white,
//           body: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30,vertical:50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: Center(
//                     child: Container(
//                       child:const Image(
//                               height:200,
//                               width: 200,
//                               fit: BoxFit.cover,
//                               image:AssetImage('assets/logo.jpg'),
//                           ),
//
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.center,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text('SAFE ',style: TextStyle(color:black,fontSize: 26,fontWeight: FontWeight.bold)),
//                         Container(
//                           transform: Matrix4.translationValues(0,-1.5,0),
//                           width: 80,
//                           height: 27,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5.0),
//                             color: green,
//                           ),
//                           child: Center(child: Text('EATS',style: TextStyle(color: white,fontSize: 26,fontWeight: FontWeight.bold))),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safe_eats/constant.dart';
import 'package:safe_eats/utils/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.LoginScreen);
    });
  }

  double getRelativeHeight(BuildContext context, double factor) {
    return MediaQuery.of(context).size.height * factor;
  }

  double getRelativeWidth(BuildContext context, double factor) {
    return MediaQuery.of(context).size.width * factor;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getRelativeWidth(context, 0.08),
            vertical: getRelativeHeight(context, 0.13),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Container(
                    child: Image(
                      height: getRelativeHeight(context, 0.40),
                      width: getRelativeWidth(context, 0.7),
                      fit: BoxFit.cover,
                      image: AssetImage('assets/logo.jpg'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'SAFE ',
                        style: TextStyle(
                          color: black,
                          fontSize: getRelativeHeight(context, 0.04),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0, -0.2, 0),
                        width: getRelativeWidth(context, 0.26),
                        height: getRelativeHeight(context, 0.052),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: green,
                        ),
                        child: Center(
                          child: Text(
                            'EATS',
                            style: TextStyle(
                              color: white,
                              fontSize: getRelativeHeight(context, 0.04),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
