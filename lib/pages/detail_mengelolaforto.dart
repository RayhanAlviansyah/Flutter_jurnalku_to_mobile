import 'package:flutter/material.dart';
import 'package:projek_jurnalku_to_mobile/pages/Panduan_Pengguna.dart';
import '../Widgets/custom_appbar.dart';

class DetailMengelolaforto extends StatelessWidget {
  DetailMengelolaforto({super.key});

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
                  Expanded(
                    child: Text(
                      "Panduan Penggunaan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF002D72),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Mengelola Portofolio",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              Text(
                "Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus portfolio siswa.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),

              SizedBox(height: 20),
              Text(
                "A. Menambah Portfolio Baru",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D72),
                ),
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text:
                                "Berikut adalah langkah-langkah untuk menambahkan portfolio baru:",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "1. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Buka profil Anda (klik foto profil atau nama Anda), kemudian klik tab ",
                      ),
                      TextSpan(
                        text: "Portfolio.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "2. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "Klik tombol "),
                      TextSpan(
                        text: "+ Tambah Portfolio..",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "3. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text: "Isi form yang muncul dengan detail berikut: ",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "Judul Portofolio:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  " Nama project/portfolio (wajib, maks 255 karakter)",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "Deskripsi :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  " Penjelasan detail tentang project (wajib)",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "Durasi Pengerjaan:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  " Waktu pengerjaan, contoh: \"3 bulan\", \"2 minggu\" (wajib, maks 255 karakter)",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "Link Portofolio :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  " URL project jika ada (opsional, harus URL valid)",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "Gambar Portofolio :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  " Screenshot atau foto project (opsional, maks 2MB)",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "4. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "Klik tombol "),
                      TextSpan(
                        text: "simpan ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "untuk menyimpan portfolio."),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text(
                "B. Mengedit Portofolio",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D72),
                ),
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text:
                                "Berikut adalah langkah-langkah untuk mengedit portfolio",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "1. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Temukan portfolio yang ingin diedit pada halaman Portfolio. ",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "2. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "Klik ikon "),
                      TextSpan(
                        text: "pensil (✏️) ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "pada card portfolio yang ingin diedit."),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "3. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Modal edit akan terbuka dengan data yang sudah terisi. ",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "4. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text: "Ubah data yang diperlukan sesuai kebutuhan. ",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "5. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "klik tombol "),
                      TextSpan(
                        text: "Update",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " untuk menyimpan perubahan"),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text(
                "C. Menghapus Portofolio",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D72),
                ),
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text:
                                "Berikut adalah langkah-langkah untuk menghapus portfolio:",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "1. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Temukan portfolio yang ingin diedit pada halaman Portfolio. ",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "2. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "Klik ikon "),
                      TextSpan(
                        text: "tempat sampah (🗑️) ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "pada card portfolio."),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "3. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "Konfirmasi penghapusan akan muncul. "),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "4. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "klik tombol "),
                      TextSpan(
                        text: "Ya,Hapus",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " untuk menghapus portofolio"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.red),
                    children: [
                      TextSpan(text: "⚠️  ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Catatan Penting: Penghapusan portfolio bersifat permanen dan tidak dapat dibatalkan.",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text(
                "B. Melihat Detail Portofolio",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D72),
                ),
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Untuk melihat detail lengkap portfolio:",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "1. ", style: TextStyle(fontSize: 18)),
                      TextSpan(text: "klik tombol "),
                      TextSpan(
                        text: "Lihat Detail ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "pada card portfolio."),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "2. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Halaman detail akan menampilkan informasi lengkap termasuk: ",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text:
                                  "Gambar portfolio (dapat diklik untuk preview ukuran penuh)",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: "Judul dan deskripsi lengkap"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: "Durasi pengerjaan"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: "Link portfolio (jika tersedia)"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: "Tanggal dibuat"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "• ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "Portfolio lainnya dari pemilik yang sama",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "3. ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Anda dapat mengedit atau menghapus portfolio langsung dari "
                            "halaman detail jika Anda adalah pemiliknya.",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text(
                "E. Tips Portfolio yang Baik",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D72),
                ),
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text:
                                "Untuk membuat portfolio yang berkualitas, perhatikan hal-hal berikut:",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Gunakan judul yang jelas dan menarik (maks 255 karakter) ",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Tulis deskripsi yang detail dan informatif - deskripsi dapat mengandung"
                            "line break untuk memudahkan pembacaan",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Isi durasi pengerjaan dengan jelas, "
                            "contoh: \"2 minggu\", \"3 bulan\"",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Sertakan link project yang valid jika tersedia online"
                            "(GitHub, demo live, dll)",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Upload gambar dengan kualitas baik (format: JPEG,"
                            "PNG, JPG, GIF, maks 2MB)",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text: "Pastikan semua informasi akurat dan up-to-date",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Text(
                "E. Troubleshooting",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D72),
                ),
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text:
                                "Jika mengalami masalah saat mengelola portfolio:",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Modal tidak terbuka: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )
                      ),
                      TextSpan(
                        text: "Refresh halaman dan coba lagi"
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Error saat menyimpan: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )
                      ),
                      TextSpan(
                        text: "Periksa apakah semua field wajib sudah diisi dengan benar"
                      )
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Gambar tidak terupload: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )
                      ),
                      TextSpan(
                        text: "Pastikan ukuran gambar tidak melebihi 2MB dan format yang didukung (JPG, PNG, GIF)"
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Link tidak valid: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )
                      ),
                      TextSpan(
                        text: " Pastikan URL dimulai dengan http:// atau https://"
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(text: "• ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text:
                            "Deskripsi mengandung enter:  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )
                      ),
                      TextSpan(
                        text: "Sistem sekarang mendukung line break,"
                        "pastikan browser Anda sudah di-refresh jika masih mengalami masalah"
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
