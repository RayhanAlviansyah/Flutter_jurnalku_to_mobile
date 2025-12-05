import 'package:flutter/material.dart';
import 'package:projek_jurnalku_to_mobile/Panduan_Pengguna.dart';
import 'Widgets/custom_appbar.dart';

class DetailMengisijurnal extends StatelessWidget {
  DetailMengisijurnal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),

      body: SingleChildScrollView(
        child: Container(
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
                  SizedBox(width: 30),
                  Text(
                    "Mengisi Jurnal",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              Text(
                "Panduan ini memberikan langkah-langkah rinci bagi siswa untuk mengisi jurnal harian,"
                "mengelola pekerjaan, mempelajari materi, dan mengelola"
                "poin yang diperoleh berdasarkan aktivitas yang dilakukan.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),

              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    "A. Mengisi Jurnal Harian",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF002D72),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jurnal adalah catatan harian yang berisi kegiatan yang dilakukan oleh siswa. "
                    "Jurnal ini dapat diisi oleh siswa setiap hari. Berikut langkah-langkah mengisi jurnal:",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(text: "Pilih menu "),
                              TextSpan(
                                text: "Jurnal Pembiasaan",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: " pada sidebar."),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(
                                text:
                                    "Bagian (A) adalah tabel untuk mengisi jurnal. Sesuaikan tanggal kegiatan, "
                                    "kemudian isi kegiatan yang dilakukan pada hari tersebut. Kemudian klik tombol ",
                              ),
                              TextSpan(
                                text: "Simpan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    " yang akan muncul ketika selesai mengisi kegiatan untuk menyimpan jurnal yang telah diisi.",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "*Jurnal yang sudah berlalu tidak dapat diedit.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 25),
              Column(
                children: [
                  Text(
                    "B. Pekerjaan yang di lakukan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF002D72),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Berikut adalah langkah-langkah untuk mengelola pekerjaan yang dilakukan:",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(text: "Temukan Bagian ini pada halaman"),
                              TextSpan(
                                text: " Jurnal Pembiasaan",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: " atau "),
                              TextSpan(
                                text: " Klik disini",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(text: "klik tombol "),
                              TextSpan(
                                text: "+ tambah pekerjaan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " untuk menambahkan pekerjaan baru.",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: Text(
                          "Isi form yang muncul dengan detail pekerjaan,tanggal, dan saksi ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(text: "klik tombol "),
                          TextSpan(
                            text: " Simpan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: " untuk menambahkan pekerjaan."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              Column(
                children: [
                  Text(
                    "C. Materi yang dipelajari",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF002D72),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Berikut adalah langkah-langkah untuk mengelola materi yang dipelajari:",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(text: "Temukan Bagian ini pada halaman"),
                              TextSpan(
                                text: " Jurnal Pembiasaan",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: " atau "),
                              TextSpan(
                                text: " Klik disini",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(text: "klik tombol "),
                              TextSpan(
                                text: "+ tambah pekerjaan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " untuk menambahkan pekerjaan baru.",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: Text(
                          "Isi form yang muncul dengan detail pekerjaan, tanggal, dan saksi. ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(text: "klik tombol "),
                          TextSpan(
                            text: " Simpan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: " untuk menambahkan pekerjaan."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text:
                                "Untuk mengedit atau menghapus pekerjaan, klik tombol ",
                          ),
                          TextSpan(
                            text: " Edit ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: "atau "),
                          TextSpan(
                            text: " Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: " pada pekerjaan yang diinginkan."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              Column(
                children: [
                  Text(
                    "D. Poin",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF002D72),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Berikut adalah langkah-langkah untuk mengelola point:",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(text: "Temukan Bagian ini pada halaman"),
                              TextSpan(
                                text: " Jurnal Pembiasaan",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(text: " atau "),
                              TextSpan(
                                text: " Klik disini",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: Text(
                          "Lihat kategori poin dan jumlah poin yang telah diperoleh.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: Text(
                          "Poin ceklist pembiasaan akan ditampilkan secara otomatis berdasarkan aktivitas yang telah dilakukan. ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("4. ", style: TextStyle(fontSize: 16)),
                      Expanded(
                        child: Text(
                          "Jumlah keseluruhan poin akan ditampilkan di bagian bawah tabel poin. ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
