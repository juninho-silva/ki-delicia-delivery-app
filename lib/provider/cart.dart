import 'package:crud_flutter/models/product.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get all {
    return [..._items];
  }

  void add(Product item) {
    if (item != null)
      _items.add(item);
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    var total = 0.0;

    if (_items != null && _items.length > 0) {
      _items.forEach((item) { 
        total += item.price;
      });
    }

    return total;
  }
}