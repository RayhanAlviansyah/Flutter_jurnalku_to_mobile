import 'package:flutter/material.dart';
import 'package:projek_jurnalku_to_mobile/pages/Panduan_Pengguna.dart';
import '../Widgets/custom_appbar.dart';


class DetailKelengkapanprofile extends StatelessWidget {
  DetailKelengkapanprofile({super.key});

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
                      "Kelengkapan Profile",
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
                "Panduan lengkap untuk melengkapi profil siswa dengan mengunggah "
                "dokumen penting dan menambahkan informasi media sosial.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),

              SizedBox(height: 30),
              Text(
                "Untuk melengkapi profil Anda, klik nama/foto profil Anda "
                "di bagian atas halaman untuk membuka halaman profil.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),

              SizedBox(height: 20),
              Text(
                "A. Mengunggah Dokumen",
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
                                "Di halaman profil Anda, scroll ke bawah hingga menemukan bagian",
                          ),
                          TextSpan(
                            text: " \"Dokumen\"",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: Text(
                      "Upload CV (Curriculum Vitae)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                            TextSpan(text: " Klik tombol"),
                            TextSpan(
                              text: " \"Upload CV\"",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(text: " pada bagian Curriculum Vitae"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                                  " Pilih file CV Anda (format: PDF, DOC, DOCX, maksimal 4MB)",
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
                padding: EdgeInsets.only(left: 20),
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
                                  "File akan otomatis terupload setelah dipilih",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: Text(
                      "Upload Kartu Pelajar",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                            TextSpan(text: " Klik tombol"),
                            TextSpan(
                              text: " \"Upload kartu pelajar\"",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(text: " pada bagian kartu pelajar"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                                  "Pilih foto/scan kartu pelajar Anda (format: PDF, JPG, PNG, maksimal 2MB)",
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
                padding: EdgeInsets.only(left: 20),
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
                                  "File akan otomatis terupload setelah dipilih",
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
                padding: EdgeInsets.only(left: 20),
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
                                  "*Kartu pelajar hanya dapat dilihat oleh Anda dan guru",
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Text(
                "B. Mengelola Media Sosial",
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
                          TextSpan(text: "Di bagian"),
                          TextSpan(
                            text: " \"Media Soial\" ",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(text: "pada halaman profil Anda:"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "1. ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: " Klik tombol"),
                            TextSpan(
                              text: " \"Edit\"",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: " di pojok kanan atas bagian Media Sosial",
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
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "2. ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: " Modal"),
                            TextSpan(
                              text: " \"Edit Media Sosial\"",
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(text: " akan terbuka"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                                  " Pilih file CV Anda (format: PDF, DOC, DOCX, maksimal 4MB)",
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
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "3. ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: "Isi informasi media sosial:"),
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
                              text: "Nama Plarform: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "Masukkan nama platform (Instagram, LinkedIn, GitHub, dll.)",
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
                              text: "URL: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "Masukkan link lengkap profil media sosial Anda",
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
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "4. ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: " Untuk menambah platform lain, klik",
                            ),
                            TextSpan(
                              text: " \"Tambah Media Sosial\"",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
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
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: "5. ",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(text: "Klik "),
                            TextSpan(
                              text: " \"simpan perubahan\"",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF002D72),
                              ),
                            ),
                            TextSpan(text: " untuk menyimpan"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Text(
                "C. Tips Penting",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D72),
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                            TextSpan(text: " Pastikan file yang diupload tidak melebihi batas ukuran maksimal"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                            TextSpan(text: " Gunakan URL lengkap untuk media sosial (dimulai dengan https://)"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                            TextSpan(text: " Profil yang lengkap akan membantu guru dan teman-teman mengenal Anda lebih baik"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20),
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
                            TextSpan(text: " Periksa kembali informasi yang dimasukkan sebelum menyimpan"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
