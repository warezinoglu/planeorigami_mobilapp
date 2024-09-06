import 'package:flutter/material.dart';

class DartSavasUcagi extends StatelessWidget {
  const DartSavasUcagi({Key? key}) : super(key: key);

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
              'Dart Savaş Uçağı',
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
          Image.asset('images/savas/dart-paperplane/dart.jpg'),
          Image.asset('images/savas/dart-paperplane/02.jpg'),
          Image.asset('images/savas/dart-paperplane/04-2.jpg'),
          Image.asset('images/savas/dart-paperplane/12.jpg'),
        ],
      ),
    );
  }
}
