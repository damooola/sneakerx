import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (BuildContext context, Cart value, Widget? child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            //heading
            const Text(
              "My Cart",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                Shoe individialshoe = value.getUserCart()[index];
                return CartItem();
              }),
            )
          ],
        ),
      ),
    );
  }
}
