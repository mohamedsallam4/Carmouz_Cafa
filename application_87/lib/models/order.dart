class Order {
  final int id;
  final String productName;
  final double price;
  final int quantity;
  final DateTime orderDate;

  Order({
    required this.id,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.orderDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productName': productName,
      'price': price,
      'quantity': quantity,
      'orderDate': orderDate.toIso8601String(),
    };
  }

  static Order fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      productName: map['productName'],
      price: map['price'],
      quantity: map['quantity'],
      orderDate: DateTime.parse(map['orderDate']),
    );
  }
}
