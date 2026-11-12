import 'package:basic_statefull/shopping/product_model.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final ProductModel product;
  const CartItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    var providerObject = context.read<ShoppingProvider>();

    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      color: Colors.white70,
      margin: EdgeInsets.all(20),
      child: ListTile(
        leading: Icon(product.productIcon, color: Colors.teal, size: 35),
        title: Text(product.name, style: TextStyle(fontWeight: .bold)),
        subtitle: Text(
          "price: \$${product.price}",
          style: TextStyle(color: Colors.blueGrey),
        ),
        trailing: Row(
          mainAxisSize: .min,
          spacing: 5,
          children: [
            IconButton(
              onPressed: () => providerObject.removeFromCart(product),
              icon: Icon(Icons.remove),
            ),

            Text("${product.countity}"),

            IconButton(
              onPressed: () => providerObject.addToCart(product),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
