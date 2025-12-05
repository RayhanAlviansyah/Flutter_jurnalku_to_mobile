import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Saksi extends StatefulWidget {
  const Saksi({super.key});

  @override
  State<Saksi> createState() => _SaksiState();
}

class _SaksiState extends State<Saksi> {
  List<Map<String, String>> dummyRequests = [
    {"sender": "King", "date": "12 Desember 2025"},
    {"sender": "Rafi", "date": "10 Desember 2025"},
    {"sender": "Dafa", "date": "09 Desember 2025"},
  ];

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
              child: dummyRequests.isEmpty
                  ? _emptyView()
                  : ListView.builder(
                      itemCount: dummyRequests.length,
                      itemBuilder: (context, index) {
                        return _buildExpansionTile(
                          sender: dummyRequests[index]["sender"]!,
                          date: dummyRequests[index]["date"]!,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emptyView() {
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

  Widget _buildExpansionTile({
    required String sender,
    required String date,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 2,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 6),

          title: Text(
            sender,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),

          subtitle: Text(
            date,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 11,
            ),
          ),

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 28,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Terima dari $sender");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      "Terima",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                SizedBox(
                  height: 28,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Tolak dari $sender");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      "Tolak",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
