import 'package:flutter/material.dart';

class Soal1Grid extends StatefulWidget {
  @override
  State<Soal1Grid> createState() => _Soal1GridState();
}

class _Soal1GridState extends State<Soal1Grid> {
  final List<Map<String, dynamic>> produk = [
    {"nama": "Headset Gaming", "harga": "Rp150.000", "ikon": Icons.headphones},
    {"nama": "Keyboard RGB", "harga": "Rp300.000", "ikon": Icons.keyboard},
    {"nama": "Mouse Wireless", "harga": "Rp120.000", "ikon": Icons.mouse},
    {"nama": "Speaker Mini", "harga": "Rp90.000", "ikon": Icons.speaker},
  ];

  int pressedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(title: const Text('Soal 1 - Grid Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.80,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: produk.length,
          itemBuilder: (context, index) {
            final item = produk[index];

            return GestureDetector(
              onTapDown: (_) {
                setState(() {
                  pressedIndex = index;
                });
              },
              onTapUp: (_) {
                setState(() {
                  pressedIndex = -1;
                });
              },
              onTapCancel: () {
                setState(() {
                  pressedIndex = -1;
                });
              },
              child: AnimatedScale(
                scale: pressedIndex == index ? 0.93 : 1.0,
                duration: const Duration(milliseconds: 120),
                curve: Curves.easeOut,

                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  elevation: 4,
                  shadowColor: Colors.black.withOpacity(0.10),

                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    onTap: () {}, // Ripple effect tetap muncul

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.blue.withOpacity(0.15),
                            child: Icon(item["ikon"], size: 36, color: Colors.blue),
                          ),

                          const SizedBox(height: 14),

                          Text(
                            item["nama"],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            item["harga"],
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
