import 'package:flutter/material.dart';
import 'space_cruiser.dart'; // Space Cruiser detay sayfası
import 'swash_buckler.dart'; // Swash Buckler detay sayfası

class YolcuUcaklari extends StatelessWidget {
  const YolcuUcaklari({Key? key}) : super(key: key);

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
              'Yolcu Uçakları',
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
                'Space Cruiser',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const SpaceCruiser(), // Space Cruiser sayfasına yönlendir
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.airplanemode_active, color: Colors.teal[700]),
              title: const Text(
                'Swash Buckler',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const SwashBuckler(), // Swash Buckler sayfasına yönlendir
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
