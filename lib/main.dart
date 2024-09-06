import 'package:flutter/material.dart';
import 'package:planeorigami/screens/acilis_ekrani.dart'; // Giriş ekranı

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plane Origami',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AcilisEkrani(), // Uygulama başladığında gösterilecek giriş ekranı
    );
  }
}
