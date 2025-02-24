import 'package:application_87/Register/signin.dart';
import 'package:application_87/Register/signup.dart';
import 'package:application_87/Register/welcomeScreen.dart';
import 'package:application_87/homePage/homePage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(CafeApp());
}

class CafeApp extends StatelessWidget {
  CafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => const HomePage(),
        '/register': (context) => SignUpScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
