import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<StatefulWidget> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int item = 0;
  // ignore: non_constant_identifier_names
  final Offers = [

"images/Coffee Supplier Presentation.jpg",
"images/Coffee Supplier Presentation.jpg",
"images/Coffee Supplier Presentation.jpg",
"images/Coffee Supplier Presentation.jpg",
"images/Coffee Supplier Presentation.jpg",
"images/Coffee Supplier Presentation.jpg",
"images/Coffee Supplier Presentation.jpg",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: ListView(
          children: [const SizedBox(height: 12,),
      
      Text(
                'Offers and Gifts',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800],
                ),
              ),const SizedBox(height: 13,),
           
             GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                  crossAxisCount: 2,
                ),
                itemCount: Offers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Offers[index]), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Offers",
                        style: TextStyle(fontSize: 18, color: Colors.teal[800]),
                      ),
                    ),
                  );
                  
                },
              ),
        
          ],
        ),
      ),
    );
  }
}
