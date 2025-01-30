import 'package:flutter/material.dart';
import 'main.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> historyData = [
    "Toplantı Notları",
    "Alışveriş Listesi",
    "Spor Programı",
    "Günlük Hedefler",
    "Kitap Okuma Listesi"
  ];
  List<String> filteredData = [];

  @override
  void initState() {
    super.initState();
    filteredData = List.from(historyData);
  }

  void _filterHistory(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredData = List.from(historyData);
      } else {
        filteredData = historyData
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geçmiş'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _filterHistory,
              decoration: InputDecoration(
                labelText: "Geçmişte Ara",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: filteredData.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(filteredData[index]),
                      leading: Icon(Icons.history, color: Colors.orange),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

