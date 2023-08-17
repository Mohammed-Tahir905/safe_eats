import 'package:flutter/material.dart';
import 'package:safe_eats/allergens_preferences_screen.dart';
import 'package:safe_eats/dashboard/dashboard_screen.dart';
import 'package:safe_eats/Login%20&%20Signup%20Screens/frogetpassword_screen.dart';
import 'package:safe_eats/Login%20&%20Signup%20Screens/login_screen.dart';
import 'package:safe_eats/food_allergens_sceen.dart';
import 'package:safe_eats/profile_screen.dart';
import 'package:safe_eats/result_screen.dart';
import 'package:safe_eats/Login%20&%20Signup%20Screens/signup_screen.dart';
import 'package:safe_eats/splash_screen.dart';
import 'package:safe_eats/utils/routes_name.dart';
import 'package:safe_eats/Login%20&%20Signup%20Screens/verification_screen.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.SplashScreen:
        return MaterialPageRoute(builder: (context)=>SplashScreen());
      case RoutesName.LoginScreen:
        return MaterialPageRoute(builder: (context)=>LoginScreen());
      case RoutesName.SignUpScreen:
        return MaterialPageRoute(builder: (context)=>SignUpScreen());
      case RoutesName.FrogetPasswordScreen:
        return MaterialPageRoute(builder: (context)=>FrogetPasswordScreen());
      case RoutesName.VerificationScreen:
        return MaterialPageRoute(builder: (context)=>VerificationScreen());
      case RoutesName.DashboardScreen:
        return MaterialPageRoute(builder: (context)=>DashboardScreen());
      case RoutesName.ResultScreen:
        return MaterialPageRoute(builder: (context)=>ResultScreen());
      case RoutesName.AllergensPreferencesScreen:
        return MaterialPageRoute(builder: (context)=>AllergensPreferencesScreen());
      case RoutesName.FoodAllergensScreen:
        return MaterialPageRoute(builder: (context)=>FoodAllergensScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No, Define Route : Error 404',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          );

        });
    }

  }
}