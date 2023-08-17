// import 'package:flutter/material.dart';
// import 'package:safe_eats/constant.dart';
// class MyButton extends StatelessWidget {
//    final String title;
//    final VoidCallback onPress;
//    const MyButton({Key? key,required this.title, required this.onPress,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap:onPress,
//       child: Container(
//         decoration: BoxDecoration(
//           color: green,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow:[
//             BoxShadow(
//               color: black,
//               blurRadius: 5,
//             )
//           ],
//         ),
//         height: 50,
//         width: double.infinity,
//         child: Center(
//           child: Text(
//             title,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               fontFamily: '',
//               color: white,
//             ),
//           )
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:safe_eats/constant.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  const MyButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  double getRelativeWidth(BuildContext context, double factor) {
    return MediaQuery.of(context).size.width * factor;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: green,
          borderRadius: BorderRadius.circular(getRelativeWidth(context, 0.04)),
          boxShadow: [
            BoxShadow(
              color: black,
              blurRadius: getRelativeWidth(context, 0.02),
            ),
          ],
        ),
        height: getRelativeWidth(context, 0.15),
        width: getRelativeWidth(context, 0.90),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: getRelativeWidth(context, 0.05),
              fontWeight: FontWeight.bold,
              color: white,
            ),
          ),
        ),
      ),
    );
  }
}
