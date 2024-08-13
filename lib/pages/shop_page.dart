import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemtoCart(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Successfully added"),
              content: Text("Check your cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search bar
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding:
                const EdgeInsets.only(left: 20, top: 8, right: 20, bottom: 5),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8)),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                  )),
            ),
          ),
          const SizedBox(height: 35),
          //text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 71),
            child: Text(
              'because shoes that fit better, perform better...',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          const SizedBox(height: 25),

          //hot picks text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot Picks🔥',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          //list of shoes
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
              itemCount: Cart.shoeShop.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
