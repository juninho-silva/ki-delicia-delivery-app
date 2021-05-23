import 'package:crud_flutter/models/product.dart';
import 'package:crud_flutter/provider/cart.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    
    final avatar = product.imageUrl == null || product.imageUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(product.imageUrl));

    double price = product.price;

    

    return ListTile(
      leading: avatar,
      title: Text(product.name),
      subtitle: Text(product.description),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            Text(r'R$ ' '$price'),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.blue,
              onPressed: () {
                CartProvider().add(product);
              },
            ),
          ],
        ),
      ),
    );
  }
}
