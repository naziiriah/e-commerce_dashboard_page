import 'package:flutter/widgets.dart';

class Cart {
  Cart({
    required this.quantity,
    required this.image,
    required this.price,
  });

  int quantity;
  Widget image;
  int price;

  factory Cart.fromJson(Map<String, dynamic> json) =>
      Cart(quantity: json['quantity'], image: json['image'], price: json['price']);
}
