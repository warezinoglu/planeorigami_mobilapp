import 'package:flutter/material.dart';

class SpaceCruiser extends StatelessWidget {
  const SpaceCruiser({Key? key}) : super(key: key);

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
              'Space Cruiser',
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
          Image.asset('images/yolcu/space-cruiser/space-cruiser.jpg'),
        ],
      ),
    );
  }
}
