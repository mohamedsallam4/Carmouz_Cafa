import 'package:flutter/material.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<StatefulWidget> createState() => _GetstartedState();
}
class _GetstartedState extends State <Getstarted>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SizedBox(height: double.infinity,width: double.infinity,child: Image.asset("images/Coffee Supplier Presentation.jpg",fit: BoxFit.cover,)),
    );
  }
}
