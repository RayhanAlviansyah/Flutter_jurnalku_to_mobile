import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final TextEditingController searchController = TextEditingController();

  List<Map<String, dynamic>> students = [
    {
      "name": "King",
      "info": "12309677 | PPLG XII-3 | Taj 5",
      "portfolio": 1,
      "sertifikat": 13,
      "img": "profile_2.jpg",
    },
    {
      "name": "King Denis",
      "info": "12309593 | PPLG XII-3 | Cis 3",
      "portfolio": 3,
      "sertifikat": 6,
      "img": "https://i.pravatar.cc/150?img=29",
    },
    {
      "name": "Alex",
      "info": "12309480 | PPLG XII-3 | Cic 8",
      "portfolio": 3,
      "sertifikat": 6,
      "img": "https://i.pravatar.cc/150?img=30",
    },
    {
      "name": "John Doe",
      "info": "12309481 | PPLG XII-3 | Taj 2",
      "portfolio": 5,
      "sertifikat": 10,
      "img": "https://i.pravatar.cc/150?img=31",
    },
    {
      "name": "Jane Smith",
      "info": "12309482 | PPLG XII-1 | Cis 1",
      "portfolio": 2,
      "sertifikat": 4,
      "img": "https://i.pravatar.cc/150?img=32",
    },
  ];

  late List<Map<String, dynamic>> filteredStudents;

  @override
  void initState() {
    super.initState();
    filteredStudents = List.from(students);
    searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    searchController.removeListener(_onSearchChanged);
    searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    searchStudent(searchController.text);
  }

  void searchStudent(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredStudents = List.from(students);
      } else {
        filteredStudents = students.where((student) {
          final name = student["name"].toString().toLowerCase();
          final info = student["info"].toString().toLowerCase();
          final search = query.toLowerCase();

          return name.contains(search) || info.contains(search);
        }).toList();
      }
    });
  }

  void clearSearch() {
    searchController.clear();
    searchStudent('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.menu_book, color: Color(0xFF364A62), size: 28),
                      SizedBox(width: 8),
                      Text(
                        "Jurnalku",
                        style: TextStyle(
                          color: Color(0xFF364A62),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0A4DA2),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Dashboard",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            // Banner dengan blur
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 210,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                    child: Image.asset(
                      "assets/images/Banner-Web.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(height: 210, color: Colors.black.withOpacity(0.35)),
                const Positioned(
                  left: 20,
                  bottom: 60,
                  child: Text(
                    "Direktori Siswa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  left: 20,
                  bottom: 40,
                  child: Text(
                    "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ),
              ],
            ),

            // Search box
            Transform.translate(
              offset: const Offset(0, -35),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.08),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade300),
                              color: Colors.white,
                            ),
                            child: TextField(
                              controller: searchController,
                              decoration: InputDecoration(
                                hintText: "Cari nama siswa, NIS, atau rombel...",
                                border: InputBorder.none,
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                suffixIcon: searchController.text.isNotEmpty
                                    ? IconButton(
                                        icon: const Icon(
                                          Icons.clear,
                                          color: Colors.grey,
                                        ),
                                        onPressed: clearSearch,
                                      )
                                    : null,
                              ),
                              onChanged: (value) {
                                searchStudent(value);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Tambahkan logika pencarian tambahan jika perlu
                            searchStudent(searchController.text);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0A4DA2),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 17,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Cari",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.filter_list, size: 18, color: Colors.grey),
                          SizedBox(width: 8),
                          Text(
                            "Filter Lanjutan",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 0),

            // Info jumlah siswa yang ditampilkan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Menampilkan ${filteredStudents.length} dari ${students.length} siswa${searchController.text.isNotEmpty ? ' (Hasil pencarian: "${searchController.text}")' : ''}",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // List siswa dengan search filter
            filteredStudents.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 60,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Tidak ditemukan siswa dengan kata kunci "${searchController.text}"',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: clearSearch,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0A4DA2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Tampilkan Semua',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filteredStudents.length,
                    itemBuilder: (context, index) {
                      final s = filteredStudents[index];

                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(31, 55, 22, 161)
                                  .withOpacity(0.06),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundImage:
                                      s["img"].toString().startsWith("http")
                                          ? NetworkImage(s["img"])
                                          : AssetImage(
                                                  "assets/images/${s["img"]}")
                                              as ImageProvider,
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        s["name"],
                                        style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        s["info"],
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.folder_outlined,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 6),
                                Text("${s["portfolio"]} Portfolio"),
                                const SizedBox(width: 20),
                                const Icon(
                                  Icons.verified_outlined,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 6),
                                Text("${s["sertifikat"]} Sertifikat"),
                              ],
                            ),

                            const SizedBox(height: 15),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 39, 19, 170),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Lihat Detail",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

            // Pagination (disesuaikan dengan filteredStudents)
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: BorderSide(color: Colors.grey.shade300),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Previous"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: BorderSide(color: Colors.grey.shade300),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Footer
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: double.infinity,
              color: const Color(0xFF0A4DA2),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 15,
                      ),
                      const SizedBox(width: 15),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 15,
                      ),
                      const SizedBox(width: 15),
                      FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white,
                        size: 15,
                      ),
                      const SizedBox(width: 15),
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 15,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "© 2024 SMK Wikrama Bogor. All rights reserved.",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}