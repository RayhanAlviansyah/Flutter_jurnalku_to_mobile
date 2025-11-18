import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Saksi extends StatelessWidget {
  const Saksi({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat("EEEE, dd MMMM yyyy", "en_US")
        .format(DateTime.now());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.home, color: Colors.black, size: 22),

        actions: [
          Row(
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Adly Musyaffa Tibr",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "PPLG XII-3",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage("assets/images/profile.JPG"),
              ),
              SizedBox(width: 12),
            ],
          ),
        ],

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Permintaan Saksi",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: TextStyle(
                color: Color.fromARGB(255, 41, 40, 40),
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              decoration: BoxDecoration(
                color: const Color(0xffeaf3ff),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                formattedDate, 
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xfff4f4f4),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("PENGIRIM",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  Text("TANGGAL",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                  Text("KONFIRMASI",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.group, size: 40, color: Colors.grey.shade500),
                    const SizedBox(height: 10),
                    const Text(
                      "Belum ada permintaan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Belum ada yang mengirim permintaan saksi kepada Anda",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
