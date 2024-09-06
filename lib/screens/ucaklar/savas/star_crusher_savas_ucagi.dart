import 'package:flutter/material.dart';

class StarCrusherSavasUcagi extends StatelessWidget {
  const StarCrusherSavasUcagi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        title: Row(
          children: [
            Image.asset('images/logo.png', height: 40), // Logo
            const SizedBox(width: 2), // Logo ve başlık arasındaki boşluk
            const Text(
              'Star Crusher Savaş Uçağı',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        children: [
          Image.asset('images/savas/star-crusher/star-crusher.jpg'),
        ],
      ),
    );
  }
}
