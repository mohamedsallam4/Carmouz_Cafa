

import 'package:application_87/Register/welcomeScreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const CafeApp());
}
class CafeApp extends StatelessWidget{
  const CafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WelcomeScreen(

        
      ) ,
    );
  }
}
