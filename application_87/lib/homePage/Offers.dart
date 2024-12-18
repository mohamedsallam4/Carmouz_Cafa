import 'package:flutter/material.dart';



class Offers extends StatelessWidget {

  final List<Offer> offers = [
    Offer(
      title: "عرض 1",
      items: [
        OfferItem(name: "عنصر 1", price: 30, imageUrl: 'images/cake1.jpg'),
        OfferItem(name: "عنصر 2", price: 50, imageUrl: 'images/cake4.jpg'),
        OfferItem(name: "عنصر 3", price: 20, imageUrl: 'images/coffe5.jpg'),
      ],
    ),
    Offer(
      title: "عرض 2",
      items: [
        OfferItem(name: "عنصر A", price: 40, imageUrl: 'images/coffe5.jpg'),
        OfferItem(name: "عنصر B", price: 60, imageUrl: 'images/coffe3.jpg'),
      ],
    ),
    Offer(
      title: "عرض 3",
      items: [
        OfferItem(name: "عنصر X", price: 10, imageUrl: 'images/cake2.jpg'),
        OfferItem(name: "عنصر Y", price: 80, imageUrl: 'images/cake2.jpg'),
        OfferItem(name: "عنصر Z", price: 30, imageUrl: 'images/drink3.jpg'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: ListView.builder(
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          final totalPrice = offer.items.fold(0, (sum, item) => sum + item.price);

          return Card(
            margin: const EdgeInsets.all(16.0),
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offer.title,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: offer.items.map((item) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(item.imageUrl), 
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(item.name),
                                Text("${item.price} جنيه"),
                              ],
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "السعر النهائي",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$totalPrice جنيه",
                        style: const TextStyle(fontWeight: FontWeight.bold),
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
  final String imageUrl;

  OfferItem({required this.name, required this.price, required this.imageUrl});
}
