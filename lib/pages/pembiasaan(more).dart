import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'More',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomScrollView(
        slivers: [
                    SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
            ),
          ),
        ],
      ),
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
}