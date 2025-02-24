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
          final totalPrice =
              offer.items.fold(0, (sum, item) => sum + item.price);

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      OfferDetails(offer: offer, totalPrice: totalPrice),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(16.0),
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      offer.title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: offer.items.map((item) {
                        return Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(item.imageUrl),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
            ),
          );
        },
      ),
    );
  }
}

class OfferDetails extends StatelessWidget {
  final Offer offer;
  final int totalPrice;

  const OfferDetails({Key? key, required this.offer, required this.totalPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(offer.title),
        backgroundColor: Colors.brown[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              offer.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...offer.items.map((item) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(item.imageUrl),
                ),
                title: Text(item.name),
                trailing: Text("${item.price} جنيه"),
              );
            }).toList(),
            const Divider(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "السعر النهائي",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "$totalPrice جنيه",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle payment logic here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('تم التوجه للدفع!')),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('ادفع الآن'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle adding to cart logic here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('تمت الإضافة إلى السلة!')),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text('أضف إلى السلة'),
                ),
              ],
            ),
          ],
        ),
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
