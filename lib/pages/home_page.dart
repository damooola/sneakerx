import 'package:flutter/material.dart';
import 'package:sneakerx/components/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // integer to control bottomnavbar
  int _selectedIndex = 0;

  navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to navigate to

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
// cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChanged: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(Icons.menu),
            ),
            color: Colors.black,
            onPressed: () {
              //open a drawer
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "lib/images/newb_logo.png",
                    color: Colors.white,
                  ),
                ),

                //other pages
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    leading: Icon((Icons.home)),
                    title: Text(
                      "Home",
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    leading: Icon((Icons.person)),
                    title: Text("Profile"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    leading: Icon((Icons.settings)),
                    title: Text("Settings"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    leading: Icon((Icons.info)),
                    title: Text("About"),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon((Icons.logout)),
                title: Text("Logout"),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
