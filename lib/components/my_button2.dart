// import 'package:flutter/material.dart';
// import 'package:safe_eats/constant.dart';
// class MyButton2 extends StatelessWidget {
//   final String title;
//   final String imageIcon;
//   final VoidCallback onPress;
//   const MyButton2({Key? key,required this.title, required this.onPress, required this.imageIcon,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap:onPress,
//       child: Container(
//         decoration: BoxDecoration(
//           color: white,
//           borderRadius: BorderRadius.circular(25),
//           boxShadow: [
//             BoxShadow(
//               color: black,
//               blurRadius: 6,
//             )
//           ],
//         ),
//         height: 70,
//         width: 360,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Image(image: AssetImage(imageIcon),height: 50,width: 50,),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Center(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: '',
//                       color: black,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:safe_eats/constant.dart';

class MyButton2 extends StatelessWidget {
  final String title;
  final String imageIcon;
  final VoidCallback onPress;
  const MyButton2({
    Key? key,
    required this.title,
    required this.onPress,
    required this.imageIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double referenceWidth = 360.0; // You can adjust this based on your design
    double screenWidth = MediaQuery.of(context).size.width;
    double widthRatio = screenWidth / referenceWidth;

    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(25 * widthRatio),
          boxShadow: [
            BoxShadow(
              color: black,
              blurRadius: 6 * widthRatio,
            ),
          ],
        ),
        height: 60 * widthRatio,
        width: screenWidth * 0.9,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.04 * screenWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(imageIcon),
                height: 35 * widthRatio,
                width: 35 * widthRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15 * widthRatio),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 19 * widthRatio,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                      color:black,
                    ),
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
