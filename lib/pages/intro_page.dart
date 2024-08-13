import 'package:flutter/material.dart';
import 'package:sneakerx/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child:
                  //logo
                  Image.asset(
                "lib/images/newb_logo.png",
                height: 240,
              ),
            ),

            const SizedBox(height: 48),

            // title
            const Text(
              "Let's Make Excellence Happen",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            const SizedBox(height: 24),

            // subtitle
            const Text(
              "Shop for premium high quality sneakers with New Balance",
              style: TextStyle(fontSize: 20, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 48),

            // shopnow button
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage())),
              child: Container(
                padding: const EdgeInsets.all(25),
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: const Text(
                  "Shop Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
