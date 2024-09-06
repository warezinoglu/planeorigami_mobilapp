import 'package:flutter/material.dart';
import 'sayfa_origami.dart'; // Ana sayfa

class AcilisEkrani extends StatefulWidget {
  @override
  AcilisekraniSayfa createState() => AcilisekraniSayfa();
}

class AcilisekraniSayfa extends State<AcilisEkrani> {
  @override
  void initState() {
    super.initState();
    // 3 saniye sonra ana sayfaya yönlendirir
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SayfaOrigami()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(
        child:
            Image.asset('images/logo.png', height: 200), // Giriş ekranında logo
      ),
    );
  }
}
