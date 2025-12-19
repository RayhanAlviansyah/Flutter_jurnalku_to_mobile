import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class JurnalPembiasaan extends StatefulWidget {
  const JurnalPembiasaan({super.key});

  @override
  State<JurnalPembiasaan> createState() => _JurnalPembiasaanState();
}

class _JurnalPembiasaanState extends State<JurnalPembiasaan> {
  final List<Map<String, String>> pekerjaanList = [
    {
      "tanggal": "01 Des 2025",
      "pekerjaan": "Membersihkan Perpustakaan",
      "saksi": "Bu Siti"
    },
    {
      "tanggal": "03 Des 2025",
      "pekerjaan": "Merapikan Taman",
      "saksi": "Pak Budi"
    },
  ];

  final List<Map<String, String>> MateriList = [
    {
      "tanggal": "05 Des 2025",
      "materi": "Laravel Dasar",
      "status": "Bu Siti"
    },
    {
      "tanggal": "10 Des 2025",
      "materi": "Flutter Pemula",
      "status": "Pak Budi"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: CustomAppBar(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          // ===================== HEADER =====================
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jurnal Pembiasaan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(height: 5),
                  Text('DESEMBER - 2025',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey)),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'Bulan \nSebelumnya',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Text('A. Jurnal Pembiasaan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(radius: 8, backgroundColor: Colors.green),
                      SizedBox(width: 5),
                      Text('Belum diisi'),
                      SizedBox(width: 20),
                      CircleAvatar(
                          radius: 8, backgroundColor: Colors.grey[300] ?? Colors.grey),
                      SizedBox(width: 5),
                      Text('Sudah diisi'),
                      SizedBox(width: 20),
                      CircleAvatar(radius: 8, backgroundColor: Colors.red),
                      SizedBox(width: 5),
                      Text('Belum diisi'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ===================== SLIVER GRID =====================
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  int day = index + 1;
                  bool isErrorDay = day == 1 || day == 2 || day == 3;

                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: isErrorDay
                              ? Colors.red.shade50
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            day.toString().padLeft(2, '0'),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87),
                          ),
                        ),
                      ),
                      if (isErrorDay)
                        Positioned(
                          right: 2,
                          top: 2,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 1),
                            ),
                            child: Icon(Icons.close, size: 10, color: Colors.red),
                          ),
                        ),
                    ],
                  );
                },
                childCount: 31,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.2),
            ),
          ),

          // ===================== B. PEKERJAAN =====================
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('B. Pekerjaan yang dilakukan',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

                      Spacer(),
                              IconButton(onPressed: (){
                                Navigator.pushNamed(context, '/pembiasaan_more');
                              }, 
                              icon:Icon(Icons.more_horiz, color: Colors.grey, size: 25),)
                    ],
                  ),
                  SizedBox(height: 10),
                  pekerjaanList.isEmpty
                      ? _buildEmptyTable(['Pekerjaan', 'Tgl', 'Saksi'],
                          'Belum ada pekerjaan yang diinput.')
                      : Column(
                          children: pekerjaanList.map((data) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: ExpansionTile(
                                title: Text(
                                  data["tanggal"] ?? '-',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildDetailRow(
                                            "Pekerjaan", data["pekerjaan"] ?? '-'),
                                        SizedBox(height: 6),
                                        _buildDetailRow(
                                            "Tanggal", data["tanggal"] ?? '-'),
                                        SizedBox(height: 6),
                                        _buildDetailRow(
                                            "Saksi", data["saksi"] ?? '-'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "+ Tambah Pekerjaan",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ===================== C. MATERI =====================
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('C. Materi yang dipelajari',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

                              Spacer(),
                      Spacer(),
                              IconButton(onPressed: (){
                                Navigator.pushNamed(context, '/pembiasaan_more');
                              }, 
                              icon:Icon(Icons.more_horiz, color: Colors.grey, size: 25),)
                    ],
                  ),
                  SizedBox(height: 10),
                  MateriList.isEmpty
                      ? _buildEmptyTable(['Materi', 'STS', 'TGL'],
                          'Belum ada Materi yang diinput.')
                      : Column(
                          children: MateriList.map((data) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: ExpansionTile(
                                title: Text(
                                  data["tanggal"] ?? '-',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildDetailRow(
                                            "Materi", data["materi"] ?? '-'),
                                        SizedBox(height: 6),
                                        _buildDetailRow(
                                            "Status", data["status"] ?? '-'),
                                        SizedBox(height: 6),
                                        _buildDetailRow(
                                            "Tanggal", data["tanggal"] ?? '-'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),

                SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "+ Tambah Materi",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),

          // ===================== D. POIN BELAJAR =====================
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('D. Poin Belajar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 10),
                  // Kartu Ringkasan
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total Poin Keseluruhan',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('0',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Mingguan
                  Column(
                      children: ['M1', 'M2', 'M3', 'M4'].map((minggu) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ExpansionTile(
                        title: Text('$minggu',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildDetailRow('Project/Progress', '0 Poin'),
                                SizedBox(height: 6),
                                _buildDetailRow('Pertanyaan/Laporan', '0 Poin'),
                                SizedBox(height: 6),
                                _buildDetailRow('Total Poin Minggu Ini', '0'),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList()),
                  SizedBox(height: 16),
                  // Total Lain
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Poin Ceklist Pembiasaan',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.green))
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===================== WIDGET HELPER =====================
  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Expanded(child: Text(value)),
      ],
    );
  }

  Widget _buildEmptyTable(List<String> headers, String message) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: Colors.blue.shade50,
            child: Row(
              children: headers
                  .map((h) => Expanded(
                        child: Text(
                          h,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(message),
          ),
        ],
      ),
    );
  }
}
