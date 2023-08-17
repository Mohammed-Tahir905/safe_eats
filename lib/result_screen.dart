// import 'package:flutter/material.dart';
// import 'package:safe_eats/constant.dart';
// class ResultScreen extends StatefulWidget {
//   const ResultScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ResultScreen> createState() => _ResultScreenState();
// }
//
// class _ResultScreenState extends State<ResultScreen> {
//   String height='1000';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: white,
//         foregroundColor: Colors.black,
//         elevation: 4,
//         title: const Text('Result',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold)),
//       ),
//       backgroundColor:green,
//       body: SafeArea(
//         child:Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//           child: Container(
//             height:double.parse(height),
//             width: double.infinity,
//
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(50),
//               boxShadow: [
//                 BoxShadow(
//                   color: black,
//                   blurRadius: 6,
//                 )
//               ],
//             ),
//             child:const SingleChildScrollView(
//               child:  Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
//                     child: Row(
//                       children: [
//                         Text('Tahir Jameel',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold) ,),
//                         SizedBox(width: 50,),
//                         Image(image: AssetImage('assets/product.png'),height: 50,width:100,)
//                       ],
//
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 27,vertical:0),
//                     child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//                         style:TextStyle(fontSize:22,fontWeight: FontWeight.normal,) ),
//                   )
//                 ],
//               ),
//             )),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:safe_eats/constant.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String height = '1000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: Colors.black,
        elevation: 4,
        title: const Text(
          'Result',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: green,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 0.05 * MediaQuery.of(context).size.width,
            vertical: 0.02 * MediaQuery.of(context).size.height,
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: black,
                  blurRadius: 6,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.1, vertical: 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Tahir Jameel',
                          style: TextStyle(
                            fontSize: 0.05 * MediaQuery.of(context).size.width,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 0.15 * MediaQuery.of(context).size.width),
                        Image(
                          image: AssetImage('assets/product.png'),
                          height: 0.1 * MediaQuery.of(context).size.height,
                          width: 0.1 * MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 27 , vertical: 0.01),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ajhg jf yj jyfhhm  yfj kuukgjl iyyfklh;huyfk  iufi",
                      style: TextStyle(
                        fontSize: 0.05 * MediaQuery.of(context).size.width,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
