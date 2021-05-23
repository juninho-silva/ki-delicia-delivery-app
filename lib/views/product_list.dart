import 'package:badges/badges.dart';
import 'package:crud_flutter/components/cart_floating_button.dart';
import 'package:crud_flutter/components/product_tile.dart';
import 'package:crud_flutter/models/category.dart';
import 'package:crud_flutter/models/product.dart';
import 'package:crud_flutter/provider/cart.dart';
import 'package:crud_flutter/provider/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Products products = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: ListView.builder(
        itemCount: products.count,
        itemBuilder: (ctx, i) => ProductTile(products.all.elementAt(i)),
      ),
      floatingActionButton: CartFloatingButton(),
    );
  }
}
