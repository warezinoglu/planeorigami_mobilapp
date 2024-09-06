import 'package:flutter/material.dart';
import 'turna.dart'; // Turna sayfası

class Hayvanlar extends StatelessWidget {
  const Hayvanlar({Key? key}) : super(key: key);

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
              'Hayvanlar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              leading: Image.asset('images/logo.png',//Kuş iconu olmadığı için logoyu kullandım
                  height: 40), 
              title: const Text(
                'Turna',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TurnaPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
