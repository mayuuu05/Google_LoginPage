import 'package:flutter/material.dart';
import 'package:google_login_page_with_validation/Screens/HomePage/homepage.dart';
import 'package:google_login_page_with_validation/Screens/LoginPage1/loginPage1.dart';
import 'package:google_login_page_with_validation/Screens/LoginPage2/loginPage2.dart';
import 'package:google_login_page_with_validation/Screens/LoginPage3/loginPage3.dart';
import 'package:google_login_page_with_validation/Screens/LoginPage4/loginPage4.dart';

class AppRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const LoginPage1(),
    '/page2': (context) => const LoginPage2(),
    '/page3': (context) => const LoginPage3(),
    '/page4': (context) => const LoginPage4(),
    '/page5': (context) => const HomeScreen(),
  };
}