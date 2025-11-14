import 'package:flutter/material.dart';
import 'screens/soal1_grid.dart';
import 'screens/soal2_profil.dart';
import 'screens/soal3_kontak.dart';
import 'screens/soal4_dashboard.dart';
import 'screens/soal5_evaluasi.dart';

void main() {
  runApp(KuisApp());
}

class KuisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/soal1': (context) => Soal1Grid(),
        '/soal2': (context) => Soal2Profil(),
        '/soal3': (context) => Soal3Kontak(),
        '/soal4': (context) => Soal4Dashboard(),
        '/soal5': (context) => Soal5Evaluasi(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> pages = [
    {'title': 'Soal 1 - Grid Produk', 'route': '/soal1'},
    {'title': 'Soal 2 - Profil Mahasiswa', 'route': '/soal2'},
    {'title': 'Soal 3 - Daftar Kontak', 'route': '/soal3'},
    {'title': 'Soal 4 - Dashboard', 'route': '/soal4'},
    {'title': 'Soal 5 - Evaluasi UX', 'route': '/soal5'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kuis Flutter - Daftar Soal')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(pages[i]['title']!),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.pushNamed(context, pages[i]['route']!),
          );
        },
      ),
    );
  }
}
