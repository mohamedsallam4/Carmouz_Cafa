



import 'package:application_87/homePage/Drawer.dart';
import 'package:application_87/homePage/Drinks.dart';
import 'package:application_87/homePage/Offers.dart';
import 'package:application_87/homePage/Personal_Acc.dart';
import 'package:application_87/homePage/cakes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Drinks()),
    const Center(child: Cakes()),
    const Center(child: Offers()),
    const Center(child: PersonalAccountPage()),
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
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
        drawer: const drawerr(),
        body: _screens[_selectedIndex]);
  }
}
