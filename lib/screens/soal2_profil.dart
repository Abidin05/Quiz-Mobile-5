import 'package:flutter/material.dart';

class Soal2Profil extends StatefulWidget {
  @override
  State<Soal2Profil> createState() => _Soal2ProfilState();
}

class _Soal2ProfilState extends State<Soal2Profil> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),

      appBar: AppBar(
        title: const Text(
          'Soal 2 - Profil Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 2,
      ),

      body: Center(
        child: GestureDetector(
          onTapDown: (_) => setState(() => isPressed = true),
          onTapUp: (_) => setState(() => isPressed = false),
          onTapCancel: () => setState(() => isPressed = false),

          child: AnimatedScale(
            scale: isPressed ? 0.95 : 1.0,
            duration: const Duration(milliseconds: 130),
            curve: Curves.easeOut,

            child: Card(
              elevation: 6,
              shadowColor: Colors.black.withOpacity(0.15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),

              child: InkWell(
                borderRadius: BorderRadius.circular(18),
                onTap: () {}, // efek ripple

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 38,
                        backgroundColor: Color(0xFFE3F2FD),
                        child: Icon(Icons.person, size: 42, color: Colors.blueAccent),
                      ),

                      const SizedBox(width: 22),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Nama Lengkap",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const SizedBox(height: 4),

                          const Text("NIM: 22000001",
                              style: TextStyle(fontSize: 15, color: Colors.black87)),

                          const Text("Program Studi: Informatika",
                              style: TextStyle(fontSize: 15, color: Colors.black87)),

                          const SizedBox(height: 14),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 10,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Lihat Detail",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
