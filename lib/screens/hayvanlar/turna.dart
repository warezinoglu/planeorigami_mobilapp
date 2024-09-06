import 'package:flutter/material.dart';

class TurnaPage extends StatelessWidget {
  const TurnaPage({Key? key}) : super(key: key);

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
              'Turna Origami',
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
        children: List.generate(32, (index) {
          return Center(
            child: Image.asset(
                'images/turna/turna_${index + 1}.jpg'), //32 turna görseli olduğu için turna_(+1) yaparak kodu uzatmadan turna görsellerine ulaşman sağlanıyor
          );
        }),
      ),
    );
  }
}
