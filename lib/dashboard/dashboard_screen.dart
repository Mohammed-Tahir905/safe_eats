import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:safe_eats/constant.dart';
import 'package:safe_eats/history_screen.dart';
import 'package:safe_eats/profile_screen.dart';
import 'package:safe_eats/scan_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final controller = PersistentTabController(initialIndex: 1);
  final List<Widget> _buildScreen = [
    const ProfileScreen(),
    const ScanScreen(),
    const HistoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(
            CupertinoIcons.person_alt_circle,
            color: Colors.black,
            size: 29,
          ),
          inactiveIcon: Icon(
            CupertinoIcons.person_alt_circle,
            color: Colors.grey.withOpacity(0.9),
            size: 32,
          ),
          title: 'Profile',
          textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          activeColorPrimary: black,
        ),
        PersistentBottomNavBarItem(
            icon: const Icon(
              CupertinoIcons.barcode_viewfinder,
              color: Colors.black,
              size: 29,
            ),
            inactiveIcon: Icon(
              CupertinoIcons.barcode_viewfinder,
              color: Colors.grey.withOpacity(0.9),
              size: 32,
            ),
            activeColorPrimary: black,
            title: 'Scan',
          textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.history,
            color: Colors.black,
            size: 29,
          ),
          inactiveIcon: Icon(
            Icons.history,
            color: Colors.grey.withOpacity(0.9),
            size: 32,
          ),
          title: 'History',
          textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          activeColorPrimary: black,
        ),
      ],
      backgroundColor: white,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10),
        colorBehindNavBar: black,
      ),
      navBarStyle: NavBarStyle.style9,
      controller: controller,
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
    );
  }
}
