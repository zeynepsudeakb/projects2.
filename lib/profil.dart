// profile.dart
import 'package:flutter/material.dart';
import 'main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Burada profil bilgileri yer alacak.',
          style: TextStyle(fontSize: 20, color: Colors.orange[800]),
        ),
      ),
    );
  }
}
