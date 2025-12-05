import 'package:flutter/material.dart';
import 'Widgets/custom_appbar.dart';

class Catatan extends StatefulWidget {
  const Catatan({super.key});

  @override
  State<Catatan> createState() => _CatatanState();
}

class _CatatanState extends State<Catatan> {
  List<Map<String, String>> dummyCatatan = [
    {
      "no": "1",
      "kategori": "Kedisiplinan",
      "catatan": "Sering terlambat masuk kelas",
      "status": "Dalam Perbaikan",
      "lapor": "12 Jan 2025",
      "update": "20 Jan 2025"
    },
    {
      "no": "2",
      "kategori": "Sikap",
      "catatan": "Kurang sopan kepada guru",
      "status": "Belum Ditindak",
      "lapor": "8 Jan 2025",
      "update": "Belum ada"
    },
    {
      "no": "3",
      "kategori": "Kerapian",
      "catatan": "Tidak rapi saat apel pagi",
      "status": "Sudah Berubah",
      "lapor": "5 Jan 2025",
      "update": "10 Jan 2025"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Catatan Sikap Saya",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "Lihat Catatan Sikap dan perilaku yang telah di laporkan",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.warning_amber_rounded,
                      color: Colors.orange, size: 22),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan.",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            _statBox("Total Catatan", dummyCatatan.length.toString(),
                Icons.note_alt, Colors.blue),

            const SizedBox(height: 20),
            _statBox(
                "Dalam Perbaikan",
                dummyCatatan
                    .where((x) => x["status"] == "Dalam Perbaikan")
                    .length
                    .toString(),
                Icons.bolt,
                Colors.amber),

            const SizedBox(height: 20),
            _statBox(
                "Sudah Berubah",
                dummyCatatan
                    .where((x) => x["status"] == "Sudah Berubah")
                    .length
                    .toString(),
                Icons.check_circle_outline,
                Colors.green),

            const SizedBox(height: 25),

            const Text(
              "Daftar Catatan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            dummyCatatan.isEmpty
                ? _emptyState()
                : Column(
                    children:
                        dummyCatatan.map((item) => _tileItem(item)).toList(),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _tileItem(Map<String, String> data) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 14),
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 10),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${data['kategori']} • ${data['status']}",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 3),

            Text(
              data["catatan"]!,
              style: const TextStyle(color: Colors.black54, fontSize: 13),
            ),

            const SizedBox(height: 6),

            Text(
              data["lapor"]!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        children: [
          _detailRow("Kategori", data["kategori"]!),
          _detailRow("Catatan", data["catatan"]!),
          _detailRow("Status", data["status"]!),
          _detailRow("Dilaporkan", data["lapor"]!),
          _detailRow("Update", data["update"]!),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye, size: 18),
                label: const Text("Lihat Detail"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _detailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 13)),
          Text(value,
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _emptyState() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.grey.shade100,
      ),
      child: Column(
        children: const [
          Icon(Icons.check, size: 40, color: Colors.grey),
          SizedBox(height: 12),
          Text("Tidak ada catatan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 6),
          Text("Belum ada catatan sikap yang dilaporkan",
              style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _statBox(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text(value,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ]),
          CircleAvatar(
            radius: 18,
            backgroundColor: color.withOpacity(0.1),
            child: Icon(icon, color: color),
          )
        ],
      ),
    );
  }
}
