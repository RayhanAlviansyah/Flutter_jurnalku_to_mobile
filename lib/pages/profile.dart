import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:  CustomAppBar(),

        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 9, 73, 126),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },
                        child: Text(
                          "Kembali",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),
                    Container(height: 1, color: Colors.grey),

                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/wikrama-mewah.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -40,
                          left: 15,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 42,
                                  backgroundImage: AssetImage(
                                    "assets/images/profile.jpg",
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 14, 69, 163),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Adly Musyaffa Tibr",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "12309493 | PPLG XII-3 | Cic 10",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 12, 90, 153),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 16,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Bagikan",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),

              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverTabBarDelegate(
                  TabBar(
                    labelColor: Color.fromARGB(255, 11, 91, 156),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color.fromARGB(255, 11, 91, 156),
                    tabs: [
                      Tab(text: "Overview"),
                      Tab(text: "Portofolio"),
                      Tab(text: "Sertifikat"),
                    ],
                  ),
                ),
              ),
            ];
          },

          body: TabBarView(
            children: [
              _overviewTab(),
              _portfolioTab(),
              _sertifikatTab(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _overviewTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Portfolio Terbaru",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                Icon(Icons.work_outline, color: Colors.brown, size: 42),
                SizedBox(height: 10),
                Text(
                  "Portfolio akan ditampilkan di sini",
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
              ],
            ),
          ),

          SizedBox(height: 35),

          Text(
            "Sertifikat Terbaru",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                Icon(
                  Icons.emoji_events_outlined,
                  color: Colors.amber,
                  size: 42,
                ),
                SizedBox(height: 10),
                Text(
                  "Sertifikat akan ditampilkan di sini",
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
              ],
            ),
          ),

          SizedBox(height: 35),

          Text(
            "Dokumen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 18),

          Text(
            "Curriculum Vitae",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          Text(
            "Dokumen CV siswa",
            style: TextStyle(color: Colors.black54, fontSize: 13),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0A4A88),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Lihat CV",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade700,
                  padding: EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: Icon(Icons.download, color: Colors.white),
              ),
            ],
          ),

          SizedBox(height: 28),

          Text(
            "Kartu Pelajar",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          Text(
            "Kartu identitas siswa",
            style: TextStyle(color: Colors.black54, fontSize: 13),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Lihat Kartu Pelajar",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade700,
                  padding: EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: Icon(Icons.download, color: Colors.white),
              ),
            ],
          ),

          SizedBox(height: 5),
          Text(
            "Kartu pelajar dapat dilihat oleh anda dan guru",
            style: TextStyle(color: Colors.orange, fontSize: 12),
          ),

          SizedBox(height: 35),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Media Sosial",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Icon(Icons.edit, size: 18),
            ],
          ),
          SizedBox(height: 12),

          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Icon(Icons.link, size: 20, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "https://www.linkedin.com/in/satriya~alham-02ab8a34/",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Icon(Icons.copy, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _portfolioTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add, size: 16, color: Colors.white),
              label: Text(
                "Tambah Portofolio",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0A4A88),
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 70,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.brown.shade600,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 3),
                          width: 32,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade800,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 12,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade600,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  "Belum Ada Portofolio",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),

                SizedBox(height: 6),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Portofolio akan ditampilkan di sini ketika sudah ditambahkan",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.5, color: Colors.black54),
                  ),
                ),

                SizedBox(height: 20),

                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 18, color: Colors.white),
                  label: Text(
                    "Tambah Portofolio Pertama",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0A4A88),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
  Widget _sertifikatTab() {
  return SingleChildScrollView(
    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add, size: 16, color: Colors.white),
            label: Text(
              "Tambah Sertifikat",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF0A4A88), 
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),

        SizedBox(height: 20),

        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              Text(
                "🏆",
                style: TextStyle(fontSize: 60),
              ),

              SizedBox(height: 20),

              Text(
                "Belum Ada Sertifikat",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 6),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Tambahkan sertifikat dan pencapaian Anda di sini",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add, size: 18, color: Colors.white),
                label: Text(
                  "Tambah Sertifikat",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0A4A88),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 40),
      ],
    ),
  );
}
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  _SliverTabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: Colors.white, child: tabBar);
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) => false;
}
