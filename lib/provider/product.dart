import 'dart:math';

import 'package:crud_flutter/data/database_product.dart';
import 'package:crud_flutter/models/product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  final Map<String, Product> _items = {...DATABASE_PRODUCTS};

  List<Product> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Product byIndex(int index) {
    return _items.values.elementAt(index);
  }

  void put(Product product) {
    if (product == null) return;

    if (product.id != null && !product.id.trim().isNotEmpty && _items.containsKey(product.id)) {
      
      _items.update(
        product.id,
        (_) => Product(
            id: product.id,
            category: product.category,
            description: product.description,
            name: product.name,
            imageUrl: product.imageUrl,
            price: product.price),
      );
    } else {

      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
        '1000',
        () => Product(
            id: id,
            name: product.name,
            description: product.description,
            category: product.category,
            price: product.price,
            imageUrl: product.imageUrl),
      );
    }

    notifyListeners();
  }

  void remove(Product product) {
    if (product != null && product.id != null) {
      _items.remove(product.id);

      notifyListeners();
    }
  }
}
