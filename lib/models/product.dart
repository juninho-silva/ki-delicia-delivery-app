import 'package:flutter/material.dart';

import 'category.dart';

class Product {
  final String id;
  final String description;
  final String name;
  final double price;
  final Category category;
  final String imageUrl;

  const Product(
      {this.id,
      @required this.description,
      @required this.name,
      @required this.price,
      @required this.category,
      @required this.imageUrl});
}
