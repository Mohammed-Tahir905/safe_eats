// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'package:safe_eats/constant.dart';
//
// class FoodAllergensScreen extends StatefulWidget {
//   const FoodAllergensScreen({Key? key}) : super(key: key);
//
//   @override
//   State<FoodAllergensScreen> createState() => _FoodAllergensScreenState();
// }
//
// class _FoodAllergensScreenState extends State<FoodAllergensScreen> {
//   static const glutenInfo="Gluten Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//   static const PeanutsInfo="Peanuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//   static const MilkInfo="Milk Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//   static const NutsInfo="Nuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
//
//   final List<Item> items=[
//     Item(header:'Gluten',body:glutenInfo),
//     Item(header:'Peanuts',body:PeanutsInfo),
//     Item(header:'Milk',body:MilkInfo),
//     Item(header:'Nuts',body:NutsInfo)
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: white,
//         foregroundColor: Colors.black,
//         elevation: 4,
//         title: const Text('Food Allergens',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold)),
//       ),
//       backgroundColor: green,
//       body:SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
//           child: ExpansionPanelList(
//             dividerColor:black,
//             expandIconColor: black,
//             expansionCallback: (index,isExpanded){
//               setState(()=>items[index].isExpanded=!isExpanded);
//             },
//             elevation:4,
//             children:
//               items.map((item) => ExpansionPanel(
//                 backgroundColor: white,
//             canTapOnHeader:true,
//             isExpanded: item.isExpanded,
//             headerBuilder: (context,isExpanded)=>Padding(
//               padding: const EdgeInsets.symmetric(vertical:10),
//               child: ListTile(
//                 title: Text(item.header,style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold),),),
//             ),
//             body: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//               child: ListTile(
//                 title:Text(item.body,style: TextStyle(fontSize: 20),),
//               ),
//             )
//       )).toList(),
//   ),
//         ),
//       ),
//     );
//   }
// }
// class Item{
//   final String header;
//   final String body;
//   bool isExpanded;
//   Item({
//     required this.header,
//     required this.body,
//     this.isExpanded=false,
// });
// }

import 'package:flutter/material.dart';
import 'package:safe_eats/constant.dart';

class FoodAllergensScreen extends StatefulWidget {
  const FoodAllergensScreen({Key? key}) : super(key: key);

  @override
  State<FoodAllergensScreen> createState() => _FoodAllergensScreenState();
}

class _FoodAllergensScreenState extends State<FoodAllergensScreen> {
  static const glutenInfo =
      "Gluten Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
  static const PeanutsInfo =
      "Peanuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
  static const MilkInfo =
      "Milk Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";
  static const NutsInfo =
      "Nuts Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled";

  final List<Item> items = [
    Item(header: 'Gluten', body: glutenInfo),
    Item(header: 'Peanuts', body: PeanutsInfo),
    Item(header: 'Milk', body: MilkInfo),
    Item(header: 'Nuts', body: NutsInfo),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: Colors.black,
        elevation: 4,
        title: const Text(
          'Food Allergens',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: green,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: screenWidth * 0.05),
          child: ExpansionPanelList(
            dividerColor: black,
            expandIconColor: black,
            expansionCallback: (index, isExpanded) {
              setState(() => items[index].isExpanded = !isExpanded);
            },
            elevation: 4,
            children: items
                .map(
                  (item) => ExpansionPanel(
                backgroundColor: white,
                canTapOnHeader: true,
                isExpanded: item.isExpanded,
                headerBuilder: (context, isExpanded) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Text(
                      item.header,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                body: ListTile(
                  title: Text(
                    item.body,
                    style: TextStyle(fontSize: 20),
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
