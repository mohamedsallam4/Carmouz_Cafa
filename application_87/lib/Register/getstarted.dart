import 'package:application_87/homePage/Drinks.dart';
import 'package:application_87/homePage/Offers.dart';
import 'package:application_87/homePage/cakes.dart';
import 'package:flutter/material.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<StatefulWidget> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    setState(() {
    });
  }
  int _selectedIndex = 0;

  final List<Widget> screens = [
    const Center(child: Drinks()),
    const Center(child: Cakes()),
 Center(child: Offers()),

  ];
  List items = [
    "caffee ",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
    "coffee mix",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KARMOUZ Cafe'),
          backgroundColor: Colors.brown[700],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Colors.brown[700],
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_drink),
              label: 'Drinks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cake),
              label: 'Cakes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard),
              label: 'Offers',
            ),
          
          ],
        ),
    
        body: 
        
    screens[_selectedIndex]
 
        
        );
  }
}
