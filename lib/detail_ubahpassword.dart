import 'package:flutter/material.dart';
import 'package:projek_jurnalku_to_mobile/Panduan_Pengguna.dart';

class DetailUbahpassword extends StatelessWidget {
  DetailUbahpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.home, color: Colors.grey),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Mochamad Satriya Alham",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "PPLG XII-3",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(color: Colors.grey, height: 1),
        ),
      ),

      body: Container(
        margin: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFE7F0FF),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tombol kembali
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PanduanPage()),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Color(0xFF0A2A43), size: 20),
                  SizedBox(width: 6),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(
                      color: Color(0xFF0A2A43),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.menu_book, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  "Panduan Penggunaan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF002D72),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "Ganti Password",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Text(
              "Halaman ini memberikan panduan langkah demi langkah untuk mengganti password akun anda. "
              "ikuti instruksi yang di berikan untuk memastikan bahwa password baru anda berhasil disimpan dan akun anda tetap aman.",
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Klik pada bagian Pengaturan Akun,",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "2. lalu isi field Password baru",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "3. Jika sudah, klik Simpan",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
