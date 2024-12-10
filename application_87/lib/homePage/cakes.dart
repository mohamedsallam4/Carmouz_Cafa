import 'package:flutter/material.dart';

class Cakes extends StatefulWidget {
  const Cakes({super.key});

  @override
  State<StatefulWidget> createState() => _CakeState();
}

class _CakeState extends State<Cakes> {
  int item = 0;
  // ignore: non_constant_identifier_names
  final Cakes = [

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
                'Popular Cakes',
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
                itemCount: Cakes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Cakes[index]), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Cake ${item + 1}",
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
