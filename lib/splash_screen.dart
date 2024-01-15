import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:about/dashboard_screen.dart';
import 'package:uts_mobile/dashboard_screen.dart'; // Ganti dengan nama file halaman beranda aplikasi Anda

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Durasi tampilan splash screen (dalam detik)
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DashboardPage(), // Ganti dengan halaman beranda aplikasi Anda
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Ganti dengan warna latar belakang yang diinginkan
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 150, // Ukuran logo Flutter
              textColor : Colors.white, // Warna logo Flutter
            ),
            SizedBox(height: 24), // Jarak antara logo dengan teks
            Text(
              'Flutter', // Ganti dengan nama aplikasi Anda
              style: TextStyle(
                fontSize: 24,
                color: Colors.white, // Warna teks
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}