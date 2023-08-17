// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'package:safe_eats/allergens_preferences_screen.dart';
// import 'package:safe_eats/components/my_button2.dart';
// import 'package:safe_eats/constant.dart';
// import 'package:safe_eats/food_allergens_sceen.dart';
//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: white,
//         elevation: 4,
//         title: const Text('Profile',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold)),
//         actions: [
//           InkWell(
//             onTap: () {},
//             child: const Center(
//                 child: Text(
//               'Logout',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold),
//             )),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 10, left: 5),
//             child: Icon(
//               Icons.logout,
//               color: black,
//               size: 25,
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: green,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(70),
//                     boxShadow: [
//                       BoxShadow(
//                         color: black,
//                         blurRadius: 15,
//                       )
//                     ],
//                   ),
//                   child: CircleAvatar(
//                     radius: 70,
//                     backgroundColor: white,
//                     child: Icon(
//                       Icons.person,
//                       size: 100,
//                       color: black,
//                     ),
//                     //backgroundImage: AssetImage('assets/logo.png'),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 35,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: white,
//                     borderRadius: BorderRadius.circular(50),
//                     boxShadow: [
//                       BoxShadow(
//                         color: black,
//                         blurRadius: 6,
//                       )
//                     ],
//                   ),
//                   height: 65,
//                   width: 300,
//                   child: Center(
//                     child: Text(
//                       'Hello, Humair!',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: '',
//                         color: black,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 35,
//                 ),
//                 MyButton2(
//                   title: 'Allergens',//Preferences,
//                   onPress: () {
//                     PersistentNavBarNavigator.pushNewScreen(
//                         context,
//                         screen: AllergensPreferencesScreen(),
//                     withNavBar: true, // OPTIONAL VALUE. True by default.
//                     pageTransitionAnimation: PageTransitionAnimation.cupertino);
//                   },
//                   imageIcon: 'assets/preferences.png',
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 MyButton2(
//                   title: 'Food Allergens',
//                   onPress: () {
//                     PersistentNavBarNavigator.pushNewScreen(
//                         context,
//                         screen: FoodAllergensScreen(),
//                         withNavBar: true, // OPTIONAL VALUE. True by default.
//                         pageTransitionAnimation: PageTransitionAnimation.cupertino);
//                   },
//                   imageIcon: 'assets/allergen.png',
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 MyButton2(
//                   title: 'Community',
//                   onPress: () {},
//                   imageIcon: 'assets/community.png',
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 MyButton2(
//                   title: 'About',
//                   onPress: () {},
//                   imageIcon: 'assets/about.png',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
// }

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:safe_eats/allergens_preferences_screen.dart';
import 'package:safe_eats/components/my_button2.dart';
import 'package:safe_eats/constant.dart';
import 'package:safe_eats/food_allergens_sceen.dart';
import 'package:safe_eats/result_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 4,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Center(
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 5),
            child: Icon(
              Icons.logout,
              color: black,
              size: 20 * screenWidth / 360, // Adjust size for responsiveness
            ),
          ),
        ],
      ),
      backgroundColor: green,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70 * screenWidth / 360), // Adjust size for responsiveness
                    boxShadow: [
                      BoxShadow(
                        color: black,
                        blurRadius: 15 * screenWidth / 360, // Adjust size for responsiveness
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 70 * screenWidth / 360, // Adjust size for responsiveness
                    backgroundColor: white,
                    child: Icon(
                      Icons.person,
                      size: 100 * screenWidth / 360, // Adjust size for responsiveness
                      color: black,
                    ),
                    //backgroundImage: AssetImage('assets/logo.png'),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(50 * screenWidth / 360), // Adjust size for responsiveness
                    boxShadow: [
                      BoxShadow(
                        color: black,
                        blurRadius: 6 * screenWidth / 360, // Adjust size for responsiveness
                      ),
                    ],
                  ),
                  height: 65 * screenWidth / 360, // Adjust size for responsiveness
                  width: screenWidth * 0.7,
                  child: Center(
                    child: Text(
                      'Hello, Humair!',
                      style: TextStyle(
                        fontSize: 24 * screenWidth / 360, // Adjust size for responsiveness
                        fontWeight: FontWeight.bold,
                        fontFamily: '',
                        color: black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                MyButton2(
                  title: 'Allergens Preferences', // Preferences
                  onPress: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: AllergensPreferencesScreen(),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  imageIcon: 'assets/preferences.png',
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton2(
                  title: 'Food Allergens',
                  onPress: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: FoodAllergensScreen(),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  imageIcon: 'assets/allergen.png',
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton2(
                  title: 'Community',
                  onPress: () {},
                  imageIcon: 'assets/community.png',
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton2(
                  title: 'About',
                  onPress: () {PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: ResultScreen(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );},
                  imageIcon: 'assets/about.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
