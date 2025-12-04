import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Saksi extends StatefulWidget {
  const Saksi({super.key});

  @override
  State<Saksi> createState() => _SaksiState();
}

class _SaksiState extends State<Saksi> {
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

            Expanded(
              child: ListView(
                children: [
                  _buildRequestCard(
                    sender: "Belum ada permintaan",
                    date: "",
                    empty: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRequestCard({
    required String sender,
    required String date,
    bool empty = false,
  }) {
    if (empty) {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50),
        child: Column(
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
      );
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            date,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[700],
            ),
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child:
                    const Text("Terima", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child:
                    const Text("Tolak", style: TextStyle(color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
