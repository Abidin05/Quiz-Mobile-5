import 'package:flutter/material.dart';

class Soal3Kontak extends StatelessWidget {
  final List<Map<String, dynamic>> kontak = [
    {"nama": "Rizky", "telp": "0812345678", "status": "Online", "warna": Colors.green},
    {"nama": "Dewi", "telp": "0898765432", "status": "Offline", "warna": Colors.grey},
    {"nama": "Andi", "telp": "0877123987", "status": "Away", "warna": Colors.orange},
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF1E1E1E) : const Color(0xFFF4F4F4),

      appBar: AppBar(
        title: const Text('Soal 3 - Daftar Kontak'),
        elevation: 2,
        backgroundColor: isDark ? Colors.black : Colors.blueAccent,
      ),

      body: ListView.builder(
        itemCount: kontak.length,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        itemBuilder: (context, index) {
          final item = kontak[index];

          return Card(
            color: isDark ? const Color(0xFF2C2C2C) : Colors.white,
            elevation: 3,
            shadowColor: Colors.black.withOpacity(0.15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.only(bottom: 14),

            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),

              leading: CircleAvatar(
                radius: 26,
                backgroundColor: item["warna"].withOpacity(0.15),
                child: Icon(Icons.person, color: item["warna"], size: 28),
              ),

              title: Text(
                item["nama"],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item["telp"],
                    style: TextStyle(
                      fontSize: 13,
                      color: isDark ? Colors.grey[300] : Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                    decoration: BoxDecoration(
                      color: item["warna"].withOpacity(0.15),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      item["status"],
                      style: TextStyle(
                        color: item["warna"],
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              // TOMBOL CALL
              trailing: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isDark
                      ? Colors.blueAccent.withOpacity(0.18)
                      : Colors.blueAccent.withOpacity(0.12),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.call,
                  color: isDark ? Colors.lightBlueAccent : Colors.blueAccent,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
