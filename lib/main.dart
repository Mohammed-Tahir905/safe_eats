import 'package:flutter/material.dart';
import 'package:safe_eats/splash_screen.dart';
import 'package:safe_eats/utils/routes.dart';
import 'package:safe_eats/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SafeEats',
      initialRoute:RoutesName.SplashScreen,
      //initialRoute: RoutesName.DashboardScreen,
      onGenerateRoute:Routes.generateRoute,

    );
  }
}
