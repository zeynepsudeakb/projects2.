import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final VoidCallback? onThemeChanged;

  const SettingsPage({Key? key, this.onThemeChanged}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsEnabled = true;
  String selectedLanguage = "Türkçe";

  void _changeLanguage(String? language) {
    if (language != null) {
      setState(() {
        selectedLanguage = language;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Bildirim Ayarları
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.orange),
            title: const Text("Bildirimleri Aç"),
            trailing: Switch(
              value: notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  notificationsEnabled = value;
                });
              },
            ),
          ),
          const Divider(),

          // Dil Seçimi
          ListTile(
            leading: const Icon(Icons.language, color: Colors.orange),
            title: const Text("Dil Seçimi"),
            trailing: DropdownButton<String>(
              value: selectedLanguage,
              onChanged: _changeLanguage,
              items: ["Türkçe", "İngilizce", "Almanca", "Fransızca"]
                  .map((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(language),
                );
              }).toList(),
            ),
          ),
          const Divider(),

          // Verileri Yedekleme
          ListTile(
            leading: const Icon(Icons.cloud_upload, color: Colors.orange),
            title: const Text("Verileri Yedekle"),
            trailing: IconButton(
              icon: const Icon(Icons.backup, color: Colors.orange),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Veriler başarıyla yedeklendi!"),
                  ),
                );
              },
            ),
          ),
          const Divider(),

          // Günlük Şifreleme Ayarı
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.orange),
            title: const Text("Günlüğü Şifrele"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
            onTap: () {
              // Şifreleme ekranına yönlendirme
            },
          ),
          const Divider(),

          // Hesap Yönetimi
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.red),
            title: const Text("Çıkış Yap", style: TextStyle(color: Colors.red)),
            onTap: () {
              // Çıkış yapma işlemi burada olacak
            },
          ),
        ],
      ),
    );
  }
}
