import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list item on sale
  final List _shopItems = [
    ["Avocado", "4.00", "images/avocado.png", Colors.green],
    ["Banana", "4.00", "images/banana.png", Colors.yellow],
    ["Chicken", "4.00", "images/chicken.png", Colors.brown],
    ["Water", "4.00", "images/water.png", Colors.blue],
  ];
  get shopItems => _shopItems;
}
