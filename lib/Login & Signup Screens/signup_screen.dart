// import 'package:flutter/material.dart';
// import 'package:safe_eats/components/my_button.dart';
// import 'package:safe_eats/constant.dart';
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   bool passwordVisible = false;
//   bool ConfirmpasswordVisible = false;
//   bool is_checked= false;
//   final formData = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final ConfirmpasswordController = TextEditingController();
//   final nameController = TextEditingController();
//
//   void initState(){
//     super.initState();
//     passwordVisible=true;
//     ConfirmpasswordVisible=true;
//   }
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
//                   height: 20,
//                 ),
//                 Text(
//                   'Sign up',
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
//                   'Please fill this to create your Account',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 17, fontFamily: '', color: black),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Text('Name',
//                     style: TextStyle(
//                         color:green,
//                         fontSize: 17,
//                         fontFamily: '',
//                         fontWeight: FontWeight.bold
//                     )),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   controller: nameController,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     hintText: 'Enter your full Name',
//                     fillColor: grey,
//                     filled: true,
//                     prefixIcon: Icon(
//                       Icons.person_2,
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
//                   height: 10,
//                 ),
//                 Text('Email',
//                     style: TextStyle(
//                         color:green,
//                         fontSize: 17,
//                         fontFamily: '',
//                         fontWeight: FontWeight.bold
//                     )),
//                 const SizedBox(
//                   height: 10,
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
//                   height: 10,
//                 ),
//                 Text('Password',
//                     style: TextStyle(
//                         color:green,
//                         fontSize: 17,
//                         fontFamily: '',
//                         fontWeight: FontWeight.bold
//                     )),
//                 const SizedBox(
//                   height: 10,
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
//                     prefixIcon: Icon(
//                       Icons.lock_open,
//                       color: green,
//                     ),
//                     suffixIcon: IconButton(
//                       icon: Icon(passwordVisible ? Icons.visibility : Icons
//                           .visibility_off),
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
//                   height: 10,
//                 ),
//                 Text('Confirm Password',
//                     style: TextStyle(
//                         color:green,
//                         fontSize: 17,
//                         fontFamily: '',
//                         fontWeight: FontWeight.bold
//                     )),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   enabled: true,
//                   controller: ConfirmpasswordController,
//                   obscureText: ConfirmpasswordVisible,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     hintText: 'Confirm Password',
//                     fillColor: grey,
//                     filled: true,
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
//                     prefixIcon: Icon(
//                       Icons.lock_open,
//                       color: green,
//                     ),
//                     suffixIcon: IconButton(
//                       icon: Icon(ConfirmpasswordVisible ? Icons.visibility : Icons
//                           .visibility_off),
//                       color: green,
//                       onPressed: () {
//                         setState(
//                               () {
//                             ConfirmpasswordVisible = !ConfirmpasswordVisible;
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Checkbox(
//                         value: is_checked,
//                         fillColor: MaterialStateProperty.resolveWith(getColor),
//                         onChanged:(val){
//                       setState(() {
//                         is_checked=val!;
//                       });
//                     }),
//                     const Text('Agree to the terms of use and privacy policy',style:TextStyle(fontSize: 15,color:Colors.black),)
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 MyButton(title: 'Sign up', onPress: (){}),
//
//
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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordVisible = false;
  bool ConfirmpasswordVisible = false;
  bool is_checked = false;
  final formData = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ConfirmpasswordController = TextEditingController();
  final nameController = TextEditingController();

  void initState() {
    super.initState();
    passwordVisible = true;
    ConfirmpasswordVisible = true;
  }

  double getRelativeHeight(BuildContext context, double factor) {
    return MediaQuery.of(context).size.height * factor;
  }

  double getRelativeWidth(BuildContext context, double factor) {
    return MediaQuery.of(context).size.width * factor;
  }

  Color getColor(Set<MaterialState> states) {
    return states.contains(MaterialState.selected) ? green : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
      ),
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getRelativeWidth(context, 0.05),
            vertical: getRelativeHeight(context, 0.01),
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
                  'Sign up',
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
                  'Please fill this to create your Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getRelativeHeight(context, 0.021),
                    fontFamily: '',
                    color: black,
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.03),
                ),
                Text(
                  'Name',
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
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter your full Name',
                    fillColor: grey,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.person_2,
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
                  height: getRelativeHeight(context, 0.01),
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
                      Icons.email_outlined,
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
                  height: getRelativeHeight(context, 0.01),
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
                Text(
                  'Confirm Password',
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
                  controller: ConfirmpasswordController,
                  obscureText: ConfirmpasswordVisible,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    fillColor: grey,
                    filled: true,
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
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: green,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(ConfirmpasswordVisible ? Icons.visibility : Icons.visibility_off),
                      color: green,
                      onPressed: () {
                        setState(
                              () {
                            ConfirmpasswordVisible = !ConfirmpasswordVisible;
                          },
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.02),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: is_checked,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      onChanged: (val) {
                        setState(() {
                          is_checked = val!;
                        });
                      },
                    ),
                    Text(
                      'Agree to the terms of use and privacy policy',
                      style: TextStyle(
                        fontSize: getRelativeHeight(context, 0.016),
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.03),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: getRelativeWidth(context, 0.015),
                    vertical: getRelativeHeight(context, 0),
                  ),
                  child: MyButton(title: 'Sign up', onPress: () {}),
                ),
                SizedBox(
                  height: getRelativeHeight(context, 0.05),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
