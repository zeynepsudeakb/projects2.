import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const MyPlannerApp());
}

class MyPlannerApp extends StatelessWidget {
  const MyPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyPlanner',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const WelcomePage(), // WelcomePage'i ana sayfa olarak ayarladık
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Dikey ortalamak için
          children: [
            const Text(
              'Hoş Geldiniz!', // Hoşgeldiniz yazısı
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.orange, // Rengi turuncu yaptık
              ),
            ),
            const SizedBox(height: 20), // Yazı ile buton arasında boşluk
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PlannerScreen()),
                );
              },
              child: const Text('Başla'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[700], // Buton rengi
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Buton boyutu
                textStyle: const TextStyle(fontSize: 20), // Yazı boyutu
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Buton köşe yuvarlama
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
