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
    "images/drink3.jpg",
    "images/coffe1.jpg",
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
    "Caffee",
    "Coffee mix",
    "Espresso",
    "Latte",
    "Cappuccino",
    "Macchiato",
    "Mocha",
    "Hot Chocolate",
    "Tea",
    "Caffee",
    "Coffee mix",
    "Espresso",
    "Latte",
    "Cappuccino",
    "Macchiato",
    "Mocha",
    "Hot Chocolate",
    "Tea",
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
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          image: images[index],
                          title: items[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal[800],
                        ),
                      ),
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

class DetailsPage extends StatelessWidget {
  final String image;
  final String title;

  const DetailsPage({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.brown[800],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.brown[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'This is the detailed description of the selected item. Enjoy your drink!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
