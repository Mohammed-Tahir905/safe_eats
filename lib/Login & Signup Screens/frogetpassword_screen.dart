// import 'package:flutter/material.dart';
// import 'package:safe_eats/components/my_button.dart';
// import 'package:safe_eats/constant.dart';
// import 'package:safe_eats/utils/routes_name.dart';
// class FrogetPasswordScreen extends StatefulWidget {
//   const FrogetPasswordScreen({Key? key}) : super(key: key);
//
//   @override
//   State<FrogetPasswordScreen> createState() => _FrogetPasswordScreenState();
// }
//
// class _FrogetPasswordScreenState extends State<FrogetPasswordScreen> {
//   final emailController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: green,
//       ),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Text(
//                   'Forgot\nPassword?',
//                   style: TextStyle(
//                     fontSize: 42,
//                     fontFamily: ' ',
//                     fontWeight: FontWeight.bold,
//                     color: green,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Enter your email for verification We will send \nVerification Code on your email address',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                       fontSize: 16, fontFamily: 'Rubik Regular', color: black,fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Text('Email',
//                     style: TextStyle(
//                         color:green,
//                         fontSize: 17,
//                         fontFamily: '',
//                         fontWeight: FontWeight.bold
//                     )),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 TextFormField(
//                   controller: emailController,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     hintText: 'Enter your Email',
//                     fillColor: grey,
//                     filled: true,
//                     prefixIcon: Icon(
//                       Icons.email_outlined,
//                       color: green,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color:Colors.grey.shade300,
//                           width: 2,
//                         )),
//                     errorBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.red,
//                           width: 2,
//                         )),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: green,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 MyButton(title: 'Continue', onPress: (){
//                   Navigator.pushNamed(context, RoutesName.VerificationScreen);
//                 }),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:safe_eats/components/my_button.dart';
import 'package:safe_eats/constant.dart';
import 'package:safe_eats/utils/routes_name.dart';

class FrogetPasswordScreen extends StatefulWidget {
  const FrogetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<FrogetPasswordScreen> createState() => _FrogetPasswordScreenState();
}

class _FrogetPasswordScreenState extends State<FrogetPasswordScreen> {
  final emailController = TextEditingController();

  double getRelativeHeight(BuildContext context, double factor) {
    return MediaQuery.of(context).size.height * factor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getRelativeHeight(context, 0.03),
            vertical: getRelativeHeight(context, 0.02),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getRelativeHeight(context, 0.02),
                ),
                Text(
                  'Forgot\nPassword?',
                  style: TextStyle(
                    fontSize: getRelativeHeight(context, 0.06),
                    fontWeight: FontWeight.bold,
                    color: green,
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.015),
                ),
                Text(
                  'Enter your email for verification.\nWe will send a Verification Code to your email address.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getRelativeHeight(context, 0.021),
                    fontFamily: 'Rubik Regular',
                    color: black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.08),
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    color: green,
                    fontSize: getRelativeHeight(context, 0.022),
                    fontFamily: '',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.01),
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    fillColor: grey,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                        width: getRelativeHeight(context, 0.002),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: getRelativeHeight(context, 0.002),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: green,
                        width: getRelativeHeight(context, 0.002),
                      ),
                      borderRadius: BorderRadius.circular(
                        getRelativeHeight(context, 0.01),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.12),
                ),
                MyButton(
                  title: 'Continue',
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.VerificationScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
