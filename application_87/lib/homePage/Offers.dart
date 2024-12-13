import 'package:flutter/material.dart';




class Offers extends StatelessWidget {

  final List<Offer> offers = [
    Offer(
      title: "عرض 1",
      items: [
        OfferItem(name: "عنصر 1", price: 30),
        OfferItem(name: "عنصر 2", price: 50),
        OfferItem(name: "عنصر 3", price: 20),
      ],
    ),
    Offer(
      title: "عرض 2",
      items: [
        OfferItem(name: "عنصر A", price: 40),
        OfferItem(name: "عنصر B", price: 60),
      ],
    ),
    Offer(
      title: "عرض 3",
      items: [
        OfferItem(name: "عنصر X", price: 10),
        OfferItem(name: "عنصر Y", price: 80),
        OfferItem(name: "عنصر Z", price: 30),
      ],
    ),
  ];

   Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("العروض"),
      // ),
      body: ListView.builder(
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          final totalPrice = offer.items.fold(0, (sum, item) => sum + item.price);

          return Card(
            margin: EdgeInsets.all(16.0),
            elevation: 4.0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offer.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: offer.items.map((item) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item.name),
                          Text("${item.price} جنيه"),
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "السعر النهائي",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${totalPrice} جنيه",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Offer {
  
  final String title;
  final List<OfferItem> items;

  Offer({required this.title, required this.items});
}

class OfferItem {
  final String name;
  final int price;

  OfferItem({required this.name, required this.price});
}
