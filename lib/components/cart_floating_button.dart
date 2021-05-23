import 'package:badges/badges.dart';
import 'package:crud_flutter/provider/cart.dart';
import 'package:flutter/material.dart';

class CartFloatingButton extends StatelessWidget {
  final CartProvider cart = new CartProvider();

  @override
  Widget build(BuildContext context) {
    
    return Stack(
        children: <Widget>[
          FloatingActionButton(
            tooltip: 'Adicionando item no carrinho',
            child: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
            },
          ),
          Badge(
            position: BadgePosition.topEnd(top: -12, end: -20),
            badgeColor: Colors.blue,
            badgeContent: Text(cart.count.toString(), style: TextStyle(color: Colors.white)),
          ),
        ],
    );
  }
}