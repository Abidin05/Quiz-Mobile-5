import 'package:flutter/material.dart';

class Soal5Evaluasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      appBar: AppBar(
        title: const Text(
          'Soal 5 - Evaluasi UX',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 2,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _judulKategori(Icons.star, "1. Nilai UX terbaik:"),
            _cardPenjelasan(
              "Konsistensi tata letak dan ikon memudahkan navigasi sehingga mudah dipahami pengguna.",
            ),

            const SizedBox(height: 18),

            _judulKategori(Icons.trending_up, "2. Bagian yang bisa ditingkatkan:"),
            _cardPenjelasan(
              "Ruang antar elemen (spacing) perlu dibuat lebih lega agar tampilan lebih nyaman dilihat.",
            ),

            const SizedBox(height: 18),

            _judulKategori(Icons.design_services, "3. Prinsip Material Design yang digunakan:"),
            _cardPenjelasan(
              "- Elevation untuk hierarki visual\n"
              "- Warna kontras untuk fokus pengguna\n"
              "- Alignment & spacing agar isi lebih terbaca",
            ),
          ],
        ),
      ),
    );
  }

  // === Judul setiap bagian ===
  Widget _judulKategori(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: Colors.blueAccent),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  // === Card penjelasan ===
  Widget _cardPenjelasan(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14.5, height: 1.4),
      ),
    );
  }
}
