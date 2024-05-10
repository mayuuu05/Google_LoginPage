import 'package:flutter/material.dart';
import 'package:google_login_page_with_validation/utils/routes.dart';

void main() {
  runApp(const GoogleLoginPage());
}

class GoogleLoginPage extends StatelessWidget {
  const GoogleLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google login Page',
      routes: AppRoutes.routes,
    );
  }
}

