import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChanged;
  MyBottomNavBar({super.key, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChanged!(value),
        tabs: const [
          GButton(
            icon: Icons.home_rounded,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_cart_rounded,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
