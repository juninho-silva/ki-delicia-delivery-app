import 'package:crud_flutter/provider/cart.dart';
import 'package:crud_flutter/provider/product.dart';
import 'package:crud_flutter/views/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
          child: ChangeNotifierProvider(
            create: (ctx) => CartProvider(),
          )
        ),
      ],
      child: MaterialApp(
        title: 'Ki Delicia',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductList(),
      ),
    );
  }
}
