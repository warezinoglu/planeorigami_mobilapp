import 'package:flutter/material.dart';
import 'ucaklar/savas/savas_ucaklari.dart';
import 'ucaklar/yolcu/yolcu_ucaklari.dart';
import 'hayvanlar/hayvanlar.dart';

class SayfaOrigami extends StatelessWidget {
  const SayfaOrigami({Key? key}) : super(key: key);

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
            const SizedBox(width: 1),
            const Text(
              'Plane Origami',
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
              leading: Icon(Icons.flight, color: Colors.teal[700]),
              title: const Text(
                'Savaç Uçakları',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SavasUcaklari(),
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
                'Yolcu Uçakları',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YolcuUcaklari(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.pets, color: Colors.teal[700]),
              title: const Text(
                'Hayvanlar',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hayvanlar(),
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
