import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "New Balance 574",
        price: "89.99",
        imagePath: "lib/images/newb_574.png",
        description:
            "A versatile, classic sneaker known for its rugged durability and comfortable fit"),
    Shoe(
        name: "New Balance 993",
        price: "219.99",
        imagePath: "lib/images/newb_993.png",
        description:
            "A blend of comfort and performance with ABZORB cushioning and a durable design"),
    Shoe(
        name: "New Balance 1906R",
        price: "149.99",
        imagePath: "lib/images/newb_1906r.png",
        description:
            "A high-performance sneaker featuring ACTEVA LITE cushioning and a stylish, modern design"),
    Shoe(
        name: "New Balance 2002R",
        price: "139.99",
        imagePath: "lib/images/newb_2002r.png",
        description:
            "A retro-inspired running shoe with premium materials and advanced cushioning for superior comfort"),
    Shoe(
        name: "New Balance M990",
        price: "189.99",
        imagePath: "lib/images/newb_m990.png",
        description:
            "A timeless classic with a perfect balance of cushioning and stability for everyday wear")
  ];

  //list of shoes in cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get items in cart
  List<Shoe> getUserCart() => userCart;

  //add items to cart

  void addItemtoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
