// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:safe_eats/components/my_button.dart';
// import 'package:safe_eats/constant.dart';
// import 'package:safe_eats/Login%20&%20Signup%20Screens/signup_screen.dart';
// import 'package:safe_eats/utils/routes_name.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   bool passwordVisible = false;
//   final formData = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final ageController = TextEditingController();
//   void initState(){
//     super.initState();
//     passwordVisible=true;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: green,
//         title: Text('SafeEats',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
//         centerTitle:true,
//         automaticallyImplyLeading: false,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   'Log in',
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
//                   'Please Login into your Account',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 16, fontFamily: 'Rubik Regular', color: black),
//                 ),
//                 const SizedBox(
//                   height: 60,
//                 ),
//                 Text('Email',
//                   style: TextStyle(
//                   color:green,
//                   fontSize: 17,
//                   fontFamily: '',
//                   fontWeight: FontWeight.bold
//                   )),
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
//                       Icons.person,
//                       color: green,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                       color:Colors.grey.shade300,
//                       width: 2,
//                     )),
//                     errorBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(
//                       color: Colors.red,
//                       width: 2,
//                     )),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: green,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Text('Password',
//                     style: TextStyle(
//                       color: green,
//                       fontSize: 17,
//                       fontFamily: '',
//                     fontWeight: FontWeight.bold
//                     )),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 TextFormField(
//                   enabled: true,
//                   controller: passwordController,
//                   obscureText: passwordVisible,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     hintText: 'Enter Your Password',
//                     fillColor: grey,
//                     filled: true,
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color:Colors.grey.shade300,
//                       width: 2,
//                     )),
//                     errorBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(
//                       color: Colors.red,
//                       width: 2,
//                     )),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: green,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(10)),
//                     prefixIcon: Icon(
//                       Icons.lock_open,
//                       color: green,
//                     ),
//                     suffixIcon: IconButton(
//                       icon: Icon(passwordVisible?Icons.visibility:Icons.visibility_off),
//                       color: green,
//                       onPressed: () {
//                         setState(
//                               () {
//                             passwordVisible = !passwordVisible;
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                  Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       InkWell(
//                         onTap:(){
//                           Navigator.pushNamed(context, RoutesName.FrogetPasswordScreen);
//                         },
//                         child: const Text(
//                           'Forgot Password?',
//                           style: TextStyle(
//                             color: Colors.redAccent,
//                             fontSize: 17,
//                             fontFamily: '',
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 60,
//                 ),
//                 MyButton(title: 'Log in', onPress: (){}),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Don't have a account?",
//                       style: TextStyle(
//                           fontSize: 17,
//                           fontFamily: 'Rubik Regular',
//                           color: Colors.redAccent),
//                     ),
//                     InkWell(
//                       onTap:(){
//                         Navigator.pushNamed(context, RoutesName.SignUpScreen);
//                       },
//                       child: Text(
//                         ' Sign Up',
//                         style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: '',
//                             color: green),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:safe_eats/components/my_button.dart';
import 'package:safe_eats/constant.dart';
import 'package:safe_eats/Login%20&%20Signup%20Screens/signup_screen.dart';
import 'package:safe_eats/utils/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;
  final formData = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();

  void initState() {
    super.initState();
    passwordVisible = true;
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green,
        title: Text(
          'SafeEats',
          style: TextStyle(fontSize: getRelativeHeight(context, 0.03), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getRelativeWidth(context, 0.05),
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
                  'Log in',
                  style: TextStyle(
                    fontSize: getRelativeHeight(context, 0.07),
                    fontWeight: FontWeight.bold,
                    color: green,
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.01),
                ),
                Text(
                  'Please Login into your Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getRelativeHeight(context, 0.021),
                    fontFamily: 'Rubik Regular',
                    color: black,
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.03),
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    color: green,
                    fontSize: getRelativeHeight(context, 0.022),
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
                      Icons.person,
                      color: green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(getRelativeWidth(context, 0.04)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.015),
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    color: green,
                    fontSize: getRelativeHeight(context, 0.022),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.01),
                ),
                TextFormField(
                  enabled: true,
                  controller: passwordController,
                  obscureText: passwordVisible,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    fillColor: grey,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(getRelativeWidth(context, 0.04)),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: green,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                      color: green,
                      onPressed: () {
                        setState(
                              () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.01),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getRelativeWidth(context, 0.04)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.FrogetPasswordScreen);
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: getRelativeHeight(context, 0.022),
                            fontFamily: '',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.1),
                ),
                MyButton(title: 'Log in', onPress: () {}),
                SizedBox(
                  height: getRelativeHeight(context, 0.06),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have a account?",
                      style: TextStyle(
                        fontSize: getRelativeHeight(context, 0.022),
                        fontFamily: 'Rubik Regular',
                        color: Colors.redAccent,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.SignUpScreen);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: getRelativeHeight(context, 0.02),
                          fontWeight: FontWeight.bold,
                          fontFamily: '',
                          color: green,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
