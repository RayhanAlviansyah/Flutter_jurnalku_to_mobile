import 'package:flutter/material.dart';
import 'package:projek_jurnalku_to_mobile/Panduan_Pengguna.dart';
import 'Widgets/custom_appbar.dart';

class DetailMengelolaserti extends StatelessWidget {
  DetailMengelolaserti({super.key});

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
                      "Mengelola Sertifikat",
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
                "Panduan ini memberikan langkah-langkah untuk menambah, "
                "mengedit, dan menghapus sertifikat siswa.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),

              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    "A. Menambah Sertifikat Baru",
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
                    "Berikut adalah langkah-langkah untuk menambahkan sertifikat baru:",
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
                              TextSpan(
                                text:
                                    "Buka profil Anda (klik foto profil atau nama Anda), kemudian klik tab ",
                              ),
                              TextSpan(
                                text: "Sertifikat",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                              TextSpan(text: "Klik tombol "),
                              TextSpan(
                                text: "+ Tambah Sertifikat.",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(
                                text:
                                    "Isi form yang muncul dengan detail berikut: ",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(text: "Judul: "),
                                TextSpan(
                                  text:
                                      "Nama sertifikat (wajib, maks 255 karakter)",
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
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(text: "Deskripsi: "),
                                TextSpan(
                                  text:
                                      "Penjelasan tentang sertifikat (opsional, maks 1000 karakter)",
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
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(text: "File Sertifikat: "),
                                TextSpan(
                                  text:
                                      "Upload file sertifikat (wajib, maks 10MB)",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                              TextSpan(text: "Klik tombol "),
                              TextSpan(
                                text: "Simpan ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "untuk menyimpan sertifikat."),
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
                          "*Format file yang didukung: JPEG, PNG, JPG, GIF, WEBP, PDF, DOC, DOCX (maks 10MB).",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueAccent,
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
                    "B. Mengedit Sertifikat",
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
                    "Berikut adalah langkah-langkah untuk mengedit sertifikat:",
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
                              TextSpan(
                                text:
                                    "Temukan sertifikat yang ingin diedit pada tab Sertifikat di profil Anda.",
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
                              TextSpan(text: "Klik ikon  "),
                              TextSpan(
                                text: " pensil (✏️)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    " pada card sertifikat yang ingin diedit.",
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
                          "Modal edit akan terbuka dengan data yang sudah terisi. ",
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
                          TextSpan(
                            text:
                                "Ubah judul, deskripsi, atau ganti file jika diperlukan. ",
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
                  Text("5. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "Update ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: " untuk menyimpan perubahan."),
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
                      "*Jika Anda mengganti file, file lama akan otomatis dihapus.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              Column(
                children: [
                  Text(
                    "C.  Melihat Sertifikat",
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
                    "Berikut adalah cara melihat sertifikat berdasarkan jenis file: ",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "File Gambar (JPG, PNG, GIF, WEBP): ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      "Klik pada gambar sertifikat untuk melihat preview dalam ukuran penuh"
                                      "Modal preview akan terbuka dengan gambar yang dapat di-zoom"
                                      "Klik tombol close atau area gelap di luar gambar untuk menutup preview",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
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
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "File PDF: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      "Klik tombol \"Preview PDF\" untuk melihat PDF dalam modal preview"
                                      "Modal akan menampilkan PDF viewer dengan fitur download"
                                      "Gunakan tombol download untuk menyimpan PDF ke perangkat Anda",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
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
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "File Dokumen (DOC/DOCX): ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      " Klik tombol download untuk mengunduh file.",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
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
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text:
                                      " Sertifikat Anda dapat dilihat oleh guru dan pengunjung profil publik Anda.",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              Column(
                children: [
                  Text(
                    "D. Menghapus Sertifikat",
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
                    "Berikut adalah langkah-langkah untuk menghapus sertifikat:",
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
                              TextSpan(
                                text:
                                    "Temukan sertifikat yang ingin dihapus pada tab Sertifikat",
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
                              TextSpan(text: "Klik ikon  "),
                              TextSpan(
                                text: " tempat sampah (🗑️)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    " pada card sertifikat.",
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
                          "Konfirmasi penghapusan akan muncul, baca peringatan dengan teliti.",
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
                          TextSpan(
                            text:
                                "Klik tombol  ",
                          ),
                          TextSpan(
                            text: "Ya, Hapus",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          ),
                          TextSpan(
                            text:
                                "untuk menghapus sertifikat. ",
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
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.red),
                        children: [
                          TextSpan(text: "⚠️ Catatan Penting: Penghapusan sertifikat bersifat"
                          "permanen dan tidak dapat dibatalkan. File sertifikat juga akan dihapus dari server."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "E. Tips Sertifikat yang Baik",
                style: TextStyle(
                  fontSize: 18,
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
                            TextSpan(text: "Gunakan nama sertifikat yang jelas dan spesifik"),
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
                            TextSpan(text: "Sertakan nama lembaga/organisasi penerbit dalam judul atau deskripsi"),
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
                            TextSpan(text: " Deskripsi dapat mengandung line break - gunakan untuk membuat poin-poin yang mudah dibaca"),
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
                            TextSpan(text: " Gunakan resolusi gambar yang cukup agar teks terlihat jelas (minimal 1024px lebar)"),
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
                            TextSpan(text: " Format PDF lebih profesional dan universal untuk dokumen sertifikat"),
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
                            TextSpan(text: "Tambahkan deskripsi untuk menjelaskan skill atau pencapaian yang diperoleh"),
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
                            TextSpan(text: " Pastikan file tidak melebihi batas ukuran 10MB"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  Text(
                    "F. Troubleshooting",
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
                    "Jika mengalami masalah saat mengelola sertifikat: ",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "Modal tidak terbuka: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      "Pastikan JavaScript aktif di browser Anda, refresh halaman dan coba lagi",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
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
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "Error saat upload: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      "Periksa ukuran file (maks 10MB) Pastikan format file didukung (JPG, PNG, GIF,"
                                      "WEBP, PDF, DOC, DOCX) Coba compress file jika terlalu besar",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
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
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "Preview tidak muncul: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      " Pastikan file sertifikat valid dan tidak corrupt.",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
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
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "PDF tidak bisa dibuka: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      " Gunakan browser modern (Chrome, Firefox, Edge) untuk preview PDF",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
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
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                TextSpan(
                                  text: "Deskripsi dengan enter bermasalah : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
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
                              children: [
                                TextSpan(
                                  text:
                                      " Sistem sekarang mendukung line break, refresh browser jika masih ada masalah",
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
