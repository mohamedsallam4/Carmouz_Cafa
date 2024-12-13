import 'package:flutter/material.dart';

class Drinks extends StatefulWidget {
  const Drinks({super.key});

  @override
  State<StatefulWidget> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  List images = [
   "images/coffe1.jpg",
   "images/coffe2.jpg",
   "images/coffe3.jpg",
   "images/coffe4.jpg",
   "images/coffe5.jpg",
   "images/coffe6.jpg",
   "images/drink1.jpg",
   "images/drink2.jpg",
   "images/drink3.jpg",   "images/coffe1.jpg",
   "images/coffe2.jpg",
   "images/coffe3.jpg",
   "images/coffe4.jpg",
   "images/coffe5.jpg",
   "images/coffe6.jpg",
   "images/drink1.jpg",
   "images/drink2.jpg",
   "images/drink3.jpg",

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
    "coffee mix",  "caffee ",
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
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/homepage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                color: Colors.black.withOpacity(0.5),
                child: const Text(
                  'Welcome to Karmouz',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Introduction
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'About Us',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'At Carmouz Cafe, we serve the best coffee and snacks in town. Whether you’re here to work, relax, or catch up with friends, our warm and cozy ambiance will make you feel right at home!',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Popular Drinks',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800],
                ),
              ),
            ),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: items.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      items[index],
                      style: TextStyle(fontSize: 18, color: Colors.teal[800]),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.brown[600]),
                  const SizedBox(width: 10),
                  const Text('+201552824830', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.brown[600]),
                  const SizedBox(width: 10),
                  const Text('123 Coffee Street, Flutter City',
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
