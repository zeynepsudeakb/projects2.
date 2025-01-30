// history.dart
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geçmiş'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Geçmiş Veriler Burada Gösterilecek.',
          style: TextStyle(fontSize: 20, color: Colors.orange[800]),
        ),
      ),
    );
  }
}
