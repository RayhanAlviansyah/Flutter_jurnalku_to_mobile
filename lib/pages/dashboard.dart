import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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

body: SingleChildScrollView(
  child: Column(
    children: [
      Container(
        width: double.infinity,
        height:300,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 3, 59, 146),
        ),

        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsetsGeometry.all(20)),
             Text(
          'Selamat Datang di jurnalku',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
        ),

        SizedBox(height: 10),

         Text(
          'Solusi cerdas untuk memantau perkembangan \n'
          'kompetensi siswa secara efektif',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white
          ),
        ),
          ],
        ),
      ),

      Padding(padding: EdgeInsetsGeometry.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration:BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
              color: Color.fromARGB(255, 3, 59, 146),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Apa itu Juranlku',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  'Jurnalku adalah aplikasi cerdas yang membantu guru \n'
                  'dan siswa dalam memantau dan mengelola kompetensi \n'
                  'keahlian siswa secara efektif, terstruktur, dan real-time. \n'
                  'Dengan fitur lengkap, proses pemantauan menjadi\n'
                  'lebih mudah dan transparan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 25),

          Container(
            width: double.infinity,
            height: 400,
            decoration:BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.house_outlined, color: Color.fromARGB(255, 34, 57, 135), size: 60,),
                SizedBox(height: 20),
                Text(
                  'Dirancang khusus',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 34, 57, 135),
                  ),
                ),

                SizedBox(height: 30),

                Text(
                  'Memenuhi kebutuhan spesifik sekolah kami \n'
                  'dengan fokus pada kemajuan siswa.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 34, 57, 135),
                  ),
                ),
              ],
            ),
            ),

            SizedBox(height: 25),
            
          Container(
            width: double.infinity,
            height: 400,
            decoration:BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_outline_rounded, color: Color.fromARGB(255, 34, 57, 135), size: 60,),
                SizedBox(height: 20),
                Text(
                  'Efektif',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 34, 57, 135),
                  ),
                ),

                SizedBox(height: 30),

                Text(
                  'Memudahkan siswa dan guru melihat \n'
                  'perkembangan secara real-time.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 34, 57, 135),
                  ),
                ),
              ],
            ),
            ),
            
            SizedBox(height: 25),
            
          Container(
            width: double.infinity,
            height: 400,
            decoration:BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.school_outlined, color: Color.fromARGB(255, 34, 57, 135), size: 60,),
                SizedBox(height: 20),
                Text(
                  'Terintegrasi',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 34, 57, 135),
                  ),
                ),

                SizedBox(height: 30),

                Text(
                  'Pengajuan kompetensi siswa, validasi dan \n'
                  'laporan perkembangan yang transparan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 34, 57, 135),
                  ),
                ),
              ],
            ),
            ),

            SizedBox(height: 40),

            Text(
              'Menu Aplikasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),

            SizedBox(height: 20),

Container(
  width: double.infinity,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey, width: 0.5),
    borderRadius: BorderRadius.circular(10),
  ),
  padding: EdgeInsets.all(10),
  child: Column(
    children: [
      // ================= PROFILE =================
      GestureDetector(
        behavior: HitTestBehavior.opaque,        // <- FIX UTAMA
        onTap: () => Navigator.pushNamed(context, '/profile'),
        child: Container(
          width: double.infinity,               // <- pastikan full area
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(50, 64, 195, 255),
                child: Icon(Icons.person_outline_rounded,
                    color: Colors.lightBlue, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Profile',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      'Lihat dan kelola profile dirimu di sini ',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),

      Divider(color: Colors.grey),

      // ================= PORTOFOLIO =================
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pushNamed(context, '/profile'),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(50, 64, 195, 255),
                child: Icon(Icons.work_outline_rounded,
                    color: Colors.lightBlue, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Portofolio',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      'Lihat dan kelola portofolio kompotensimu di sini.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),

      Divider(color: Colors.grey),

      // ================= SERTIFIKAT =================
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pushNamed(context, '/profile'),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(50, 64, 195, 255),
                child: Icon(Icons.star_border,
                    color: Colors.lightBlue, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sertifikat',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      'Lihat dan unduh sertifikat kompetensimu di sini.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),
    ],
  ),
  
),

            SizedBox(height: 40),

Container(
  width: double.infinity,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey, width: 0.5),
    borderRadius: BorderRadius.circular(10),
  ),
  padding: EdgeInsets.all(10),
  child: Column(
    children: [
      // ================= JURNAL PEMBIASAAN =================
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pushNamed(context, '/jurnal_pembiasaan'),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(50, 64, 195, 255),
                child: Icon(Icons.menu_book_outlined,
                    color: Colors.lightBlue, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jurnal Pembiasaan',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      'Catat dan pantau kegiatan pembiasaan harianmu',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),

      Divider(color: Colors.grey),

      // ================= PERMINTAAN SAKSI =================
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pushNamed(context, '/permintaan_saksi'),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(50, 64, 195, 255),
                child: Icon(Icons.person_outline_rounded,
                    color: Colors.lightBlue, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Permintaan Saksi',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      'Lihat teman yang mengajukan permintaan saksi.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),

      Divider(color: Colors.grey),

      // ================= PROGRESS =================
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pushNamed(context, '/progress'),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(50, 64, 195, 255),
                child: Icon(Icons.insights_outlined,
                    color: Colors.lightBlue, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Progress',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      'Lihat kemajuan kompetensi dan pencapaian\nbelajarmu.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),

      Divider(color: Colors.grey),

      // ================= CATATAN SIKAP =================
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.pushNamed(context, '/catatan_sikap'),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(50, 64, 195, 255),
                child: Icon(Icons.warning_amber,
                    color: Colors.lightBlue, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Catatan sikap',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      'Lihat catatan sikap dan perilaku dari guru.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),
    ],
  ),
),


            SizedBox(height: 40),

            Text(
              'Statistik Kompetensi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width:0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Materi Diselesaikan.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text('0', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                    
                        Spacer(),
                    
                    CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(49, 80, 255, 64),
                    child: Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.green,
                      size: 30,
                    )
                                ),
                      ],
                    ),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Selesai',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

                        Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width:0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pengajuan Pending.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text('0', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                    
                        Spacer(),
                    
                    CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(48, 255, 134, 64),
                    child: Icon(
                      Icons.more_time_rounded,
                      color: Colors.orange,
                      size: 30,
                    )
                                ),
                      ],
                    ),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'pending',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

                        Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width:0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Materi hari ini.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text('0', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                    
                        Spacer(),
                    
                    CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(47, 64, 156, 255),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.blue,
                      size: 30,
                    )
                                ),
                      ],
                    ),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'hari ini',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

                        Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width:0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Materi Revisi.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text('0', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                    
                        Spacer(),
                    
                    CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(48, 198, 64, 255),
                    child: Icon(
                      Icons.replay_rounded,
                      color: Colors.purple,
                      size: 30,
                    )
                                ),
                      ],
                    ),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.purple,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Revisi',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30,),

              Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width:0.5),
        ),
        child: Padding(padding: EdgeInsetsGeometry.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Progress Akademik',
              style: 
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30,),

            Row(
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: const Color.fromARGB(255, 33, 79, 243),
                ),

                SizedBox(width: 5,),

                Text(
                  'Selesai',
                  style: 
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                Spacer(),

                Text(
                  '0',
                  style:
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),

            SizedBox(height: 10,),


            Row(
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: const Color.fromARGB(255, 33, 131, 243),
                ),

                SizedBox(width: 5,),

                Text(
                  'Pending',
                  style: 
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                Spacer(),

                Text(
                  '0',
                  style:
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),

            SizedBox(height: 10,),

                        Row(
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: const Color.fromARGB(255, 33, 208, 243),
                ),

                SizedBox(width: 5,),

                Text(
                  'Belum',
                  style: 
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                Spacer(),

                Text(
                  '0',
                  style:
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

                        Row(
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: const Color.fromARGB(255, 22, 121, 160),
                ),

                SizedBox(width: 5,),

                Text(
                  'Hari ini',
                  style: 
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                Spacer(),

                Text(
                  '0',
                  style:
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            
          ],
        ),
        ),
      ),

      SizedBox(height: 30,),

      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width:0.5),
        ),
        child: Padding(padding: EdgeInsetsGeometry.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Lihat progress kamu ->',
              style: 
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.blue[800],
              ),
            ),

            SizedBox(height: 40,),

            Text(
              'Belum ada komponen / progress',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue[800],
              ),
            ),

            SizedBox(height: 20,),

            Text(
              'Lihat semua Kompetensi',
              style: TextStyle(
                fontSize: 12,
                 decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
      ),
        ],
      ),
      ),

              Container(
                width: double.infinity,
                color: Color.fromARGB(50, 33, 149, 243),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '© GEN-28 PPLG SMK Wikrama Bogor.All Rights Reserved.',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
    ],
  ),
),
    );
  }
}