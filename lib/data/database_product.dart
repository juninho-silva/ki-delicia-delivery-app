import 'package:crud_flutter/models/category.dart';
import 'package:crud_flutter/models/product.dart';

const DATABASE_PRODUCTS = {
  '1': const Product(
    id: '1',
    description: 'Pão, Carne, Salada, Ovos e Queijo',
    category: Category.food,
    name: 'Hammburguer',
    price: 14.0,
    imageUrl: 'https://st3.depositphotos.com/1000504/19178/i/600/depositphotos_191783046-stock-photo-fresh-tasty-burger.jpg'
  ),
  '2': const Product(
    id: '2',
    description: 'Pão Australiano, 2 Carnes, Ovos e 4 Queijo',
    category: Category.food,
    name: 'Aust. Burguer',
    price: 14.0,
    imageUrl: 'https://st3.depositphotos.com/1000504/19178/i/600/depositphotos_191783046-stock-photo-fresh-tasty-burger.jpg'
  ),
};