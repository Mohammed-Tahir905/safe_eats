// import 'package:flutter/material.dart';
// import 'package:safe_eats/constant.dart';
// import 'package:safe_eats/allergens_setting.dart';
//
// class AllergensPreferencesScreen extends StatefulWidget {
//   const AllergensPreferencesScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AllergensPreferencesScreen> createState() =>
//       _AllergensPreferencesScreenState();
// }
//
// class _AllergensPreferencesScreenState
//     extends State<AllergensPreferencesScreen> {
//   final allergens = [
//     AllergensSetting(title: 'Without Gluten'),
//     AllergensSetting(title: 'Without Peanuts'),
//     AllergensSetting(title: 'Without Milk'),
//     AllergensSetting(title: 'Without Nuts'),
//   ];
//   Widget buildSingleCheckbox(AllergensSetting allergens) => buildCheckbox(
//       allergens: allergens,
//       onClicked: () {
//         setState(() {
//           final newValue = !allergens.value;
//           allergens.value = newValue;
//         });
//       });
//   Widget buildCheckbox({
//     required AllergensSetting allergens,
//     required VoidCallback onClicked,
//   }) =>
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         child: Container(
//           height: 70,
//           decoration: BoxDecoration(
//               color:white,
//               borderRadius: BorderRadius.circular(50),
//             boxShadow: [
//             BoxShadow(
//             color: black,
//             blurRadius: 6,
//           ),
//           ]),
//
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Center(
//               child: ListTile(
//                 onTap: onClicked,
//                 trailing: Checkbox(
//                   checkColor: white,
//                   activeColor:black,
//                   value: allergens.value,
//                   hoverColor: green,
//                   onChanged: (value) => onClicked(),
//                 ),
//                 title: Text(
//                 allergens.title,
//                 style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: white,
//         foregroundColor: Colors.black,
//         elevation: 4,
//         title: const Text('Allergens Preferences',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold)),
//       ),
//       backgroundColor: green,
//       body: ListView(
//         children: [
//           ...allergens.map(buildSingleCheckbox).toList(),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:safe_eats/constant.dart';
import 'package:safe_eats/allergens_setting.dart';

class AllergensPreferencesScreen extends StatefulWidget {
  const AllergensPreferencesScreen({Key? key}) : super(key: key);

  @override
  State<AllergensPreferencesScreen> createState() =>
      _AllergensPreferencesScreenState();
}

class _AllergensPreferencesScreenState
    extends State<AllergensPreferencesScreen> {
  final allergens = [
    AllergensSetting(title: 'Without Gluten'),
    AllergensSetting(title: 'Without Peanuts'),
    AllergensSetting(title: 'Without Milk'),
    AllergensSetting(title: 'Without Nuts'),
  ];

  Widget buildSingleCheckbox(AllergensSetting allergen) => buildCheckbox(
    allergens: allergen,
    onClicked: () {
      setState(() {
        final newValue = !allergen.value;
        allergen.value = newValue;
      });
    },
  );

  Widget buildCheckbox({
    required AllergensSetting allergens,
    required VoidCallback onClicked,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 0.05 * MediaQuery.of(context).size.width,
          vertical: 0.02 * MediaQuery.of(context).size.height,
        ),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: black,
                blurRadius: 6,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: ListTile(
                onTap: onClicked,
                trailing: Checkbox(
                  checkColor: white,
                  activeColor: black,
                  value: allergens.value,
                  onChanged: (value) => onClicked(),
                ),
                title: Text(
                  allergens.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: Colors.black,
        elevation: 4,
        title: const Text(
          'Allergens Preferences',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: green,
      body: ListView(
        children: [
          ...allergens.map(buildSingleCheckbox).toList(),
        ],
      ),
    );
  }
}
