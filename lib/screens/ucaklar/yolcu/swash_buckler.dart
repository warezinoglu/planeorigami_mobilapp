import 'package:flutter/material.dart';

class SwashBuckler extends StatelessWidget {
  const SwashBuckler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        title: Row(
          children: [
            Image.asset('images/logo.png', height: 40),
            const SizedBox(width: 2),
            const Text(
              'Swash Buckler',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        children: [
          Image.asset('images/yolcu/swashbuckler/swashbuckler.jpg'),
          Image.asset('images/yolcu/swashbuckler/15-2.jpg'),
          Image.asset('images/yolcu/swashbuckler/14-2.jpg'),
          Image.asset('images/yolcu/swashbuckler/23.jpg'),
        ],
      ),
    );
  }
}
