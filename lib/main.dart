import 'package:flutter/material.dart';
import 'package:uts_mobile/splash_screen.dart';
// import 'package:flutter/splash_screen.dart'; // Ganti dengan nama file splash_screen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Ubah halaman pertama menjadi SplashScreen()
    );
  }
}