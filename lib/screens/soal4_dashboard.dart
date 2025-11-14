import 'package:flutter/material.dart';

class Soal4Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      appBar: AppBar(
        title: const Text(
          'Soal 4 - Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 2,
      ),

      body: Column(
        children: [
          // === MENU GRID ===
          Expanded(
            flex: 3,
            child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                _menuItem(Icons.school, "Kelas"),
                _menuItem(Icons.person, "Profil"),
                _menuItem(Icons.task, "Tugas"),
                _menuItem(Icons.message, "Pesan"),
                _menuItem(Icons.settings, "Pengaturan"),
                _menuItem(Icons.info, "Info"),
              ],
            ),
          ),

          // === PEMBERITAHUAN ===
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.notifications, size: 40, color: Colors.blueAccent),
                      SizedBox(height: 12),
                      Text(
                        "Pemberitahuan Terbaru",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Tidak ada update.",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // === RIWAYAT AKTIVITAS ===
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  children: const [
                    ListTile(
                      leading: Icon(Icons.history, color: Colors.blueAccent),
                      title: Text("Login terakhir"),
                      subtitle: Text("Hari ini, 10:32"),
                    ),
                    Divider(height: 0),
                    ListTile(
                      leading: Icon(Icons.upload, color: Colors.blueAccent),
                      title: Text("Mengunggah file tugas"),
                      subtitle: Text("Kemarin, 22:10"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // MENU ITEM =====================================================
  Widget _menuItem(IconData icon, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 28, color: Colors.blueAccent),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
