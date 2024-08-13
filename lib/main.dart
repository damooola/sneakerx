import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakerx/models/cart.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( create:(context) => Cart(),
      builder: (contex,child)=>  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
