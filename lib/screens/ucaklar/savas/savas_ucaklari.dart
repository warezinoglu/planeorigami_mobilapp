import 'package:flutter/material.dart';
import 'dart_savas_ucagi.dart'; // Dart Savaş Uçağı sayfası
import 'star_crusher_savas_ucagi.dart'; // Star Crusher Savaş Uçağı sayfası

class SavasUcaklari extends StatelessWidget {
  const SavasUcaklari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Arka plan rengi
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        title: Row(
          children: [
            Image.asset('images/logo.png', height: 40), // Logo
            const SizedBox(width: 2), // Logo ve başlık arasındaki boşluk
            const Text(
              'Savaş Uçakları',
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
              leading: Icon(Icons.flight_takeoff, color: Colors.teal[700]),
              title: const Text(
                'Dart Savaş Uçağı',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const DartSavasUcagi(), // Dart Savaş Uçağı sayfasına yönlendir
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.flight, color: Colors.teal[700]),
              title: const Text(
                'Star Crusher Savaş Uçağı',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const StarCrusherSavasUcagi(), // Star Crusher Savaş Uçağı sayfasına yönlendir
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
