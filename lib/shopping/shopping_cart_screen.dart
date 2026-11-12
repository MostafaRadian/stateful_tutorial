import 'package:basic_statefull/shopping/cart_item.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 30, fontStyle: .italic),
        title: Text("My Cart 🛒"),
      ),
      body: Consumer<ShoppingProvider>(
        builder: (context, value, child) => ListView.builder(
          itemBuilder: (context, index) => CartItem(product: value.cart[index]),
          itemCount: value.cart.length,
        ),
      ),
      bottomNavigationBar: Consumer<ShoppingProvider>(
        builder: (context, value, child) => BottomAppBar(
          color: Colors.teal,

          child: Text(
            "Total: \$${value.calculateTotal().toStringAsFixed(0)}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: .bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
