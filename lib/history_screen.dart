// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:safe_eats/constant.dart';
//
// class HistoryScreen extends StatefulWidget {
//   const HistoryScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HistoryScreen> createState() => _HistoryScreenState();
// }
//
// class _HistoryScreenState extends State<HistoryScreen> {
//   static const productName="Product Name";
//   static const glutenInfo="Gluten Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//   static const PeanutsInfo="Peanuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//   static const MilkInfo="Milk Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//   static const NutsInfo="Nuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//
//   final List<Item> items=[
//     Item(header:productName,body:glutenInfo),
//     Item(header:productName,body:PeanutsInfo),
//     Item(header:productName,body:MilkInfo),
//     Item(header:productName,body:NutsInfo),
//     Item(header:productName,body:glutenInfo),
//     Item(header:productName,body:PeanutsInfo),
//     Item(header:productName,body:MilkInfo),
//     Item(header:productName,body:NutsInfo),
//     Item(header:productName,body:glutenInfo),
//     Item(header:productName,body:PeanutsInfo),
//     Item(header:productName,body:MilkInfo),
//     Item(header:productName,body:NutsInfo),
//     Item(header:productName,body:glutenInfo),
//     Item(header:productName,body:PeanutsInfo),
//     Item(header:productName,body:MilkInfo),
//     Item(header:productName,body:NutsInfo),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:green,
//         elevation: 4,
//         title: const Text('History',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold)),
//         actions: [
//           PopupMenuButton(
//               icon: Icon(
//                 Icons.more_vert_outlined,
//                 color: black,
//                 size: 30,
//               ),
//               itemBuilder: (
//                 context,
//               ) =>
//                   [
//                     const PopupMenuItem(
//                       value: 1,
//                       child: Text(
//                         'Clear all',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     )
//                   ]),
//         ],
//       ),
//       backgroundColor:white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical:0,horizontal:0),
//           child: ExpansionPanelList(
//             dividerColor:black,
//             expandIconColor: black,
//             expansionCallback: (index,isExpanded){
//               setState(()=>items[index].isExpanded=!isExpanded);
//             },
//             elevation:4,
//             children:
//             items.map((item) => ExpansionPanel(
//                 backgroundColor: white,
//                 canTapOnHeader:true,
//                 isExpanded: item.isExpanded,
//                 headerBuilder: (context,isExpanded)=>Padding(
//                   padding: const EdgeInsets.symmetric(vertical:10),
//                   child: ListTile(
//                     title: Text(item.header,style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold),)),
//                 ),
//                 body: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                   child: ListTile(
//                     title:Text(item.body,style: TextStyle(fontSize: 22,),),
//                   ),
//                 )
//             )).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Item{
//   final String header;
//   final String body;
//   bool isExpanded;
//   Item({
//     required this.header,
//     required this.body,
//     this.isExpanded=false,
//   });
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_eats/constant.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  static const productName = "Product Name";
  static const glutenInfo =
      "Gluten Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
  static const PeanutsInfo =
      "Peanuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
  static const MilkInfo =
      "Milk Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
  static const NutsInfo =
      "Nuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";

  final List<Item> items = [
    Item(header: productName, body: glutenInfo),
    Item(header: productName, body: PeanutsInfo),
    Item(header: productName, body: MilkInfo),
    Item(header: productName, body: NutsInfo),
    Item(header: productName, body: glutenInfo),
    Item(header: productName, body: PeanutsInfo),
    Item(header: productName, body: MilkInfo),
    Item(header: productName, body: NutsInfo),
    Item(header: productName, body: glutenInfo),
    Item(header: productName, body: PeanutsInfo),
    Item(header: productName, body: MilkInfo),
    Item(header: productName, body: NutsInfo),
    Item(header: productName, body: glutenInfo),
    Item(header: productName, body: PeanutsInfo),
    Item(header: productName, body: MilkInfo),
    Item(header: productName, body: NutsInfo),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        elevation: 4,
        title: const Text('History',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: black,
                size: 30,
              ),
              itemBuilder: (
                  context,
                  ) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Clear all',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ]),
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ExpansionPanelList(
            dividerColor: black,
            expandIconColor: black,
            elevation: 4,
            expansionCallback: (index, isExpanded) {
              setState(() => items[index].isExpanded = !isExpanded);
            },
            children: items
                .map(
                  (item) => ExpansionPanel(
                backgroundColor: white,
                canTapOnHeader: true,
                isExpanded: item.isExpanded,
                headerBuilder: (context, isExpanded) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: Text(
                      item.header,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                body: ListTile(
                  title: Text(
                    item.body,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class Item {
  final String header;
  final String body;
  bool isExpanded;
  Item({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}
