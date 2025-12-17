import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/floating_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 59, 146),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              
                    Container(
                      height:420,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                      image: DecorationImage(image: AssetImage("assets/images/Banner.png"),
                      fit: BoxFit.cover
                      ),
                   ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(40),
                        child: Column(
                          children: [
                            Text(
                              'Text Masuk Memulai Jurnalku',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 10, 45, 73),
                                
                              ),
                            ),
              
                            SizedBox(height: 50,),
              
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Masukan Username atau NIS',
                                            style: TextStyle(fontSize: 14, color: Colors.black),
                                          ),
                
                                          SizedBox(height: 10),
                
                                          TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Masukan Username/NIS',
                                              hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                              ),
                                              border:  OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
              
                                    SizedBox(height: 20,),
              
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Password',
                                            style: TextStyle(fontSize: 14, color: Colors.black),
                                          ),
                
                                          SizedBox(height: 10),
                
                                          TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Masukan Password',
                                              hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                              ),
                                              border:  OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 2,
                                                ),
                                              ),
                                              suffixIcon: Icon(Icons.visibility_outlined, color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
              
                                    SizedBox(height: 20,),
              
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/dashboard');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue[900],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        padding: EdgeInsets.symmetric(vertical: 16), // biar lebih enak dilihat
                                      ),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
              
                                  SizedBox(height: 30,),
              
                                  Text(
                                    'Lupa password? Hubungi guru laboran.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
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
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Menyatukan Upaya untuk Kemajuan Siswa',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 10, 45, 73),
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        'Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600],
                        ),
                      ),

                      SizedBox(height: 20),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width:2, color: Colors.grey[300]!),
                        ),

                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(Icons.house_rounded,size: 50, color: Colors.yellow,),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dirancang untuk Sekolah Kami',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 45, 73),
                                ),
                              ),
                              Text(
                                'Dikembangkan khusus untuk memenuhi kebutuhan\n'
                                'sekolah kami dengan fokus pada kemajuan siswa kami.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                       ),
                      ),

                      SizedBox(height: 20),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width:2, color: Colors.grey[300]!),
                        ),

                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(Icons.remove_red_eye_sharp,size: 50, color: Colors.purple,),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pemantauan yang Terstruktur',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 45, 73),
                                ),
                              ),
                              Text(
                                'Memudahkan guru dalam menyusun dan memantau daftar\n'
                                'kompetensi keahlian yang harus dikuasai siswa.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                       ),
                      ),

                      SizedBox(height: 20),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width:2, color: Colors.grey[300]!),
                        ),

                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(Icons.airline_seat_recline_extra,size: 50, color: Colors.blue,),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fitur Praktis dan Bermanfaat',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 45, 73),
                                ),
                              ),
                              Text(
                                'Termasuk reminder otomatis, grafik perkembangan,\n'
                                'dan analisis mendalam untuk efektivitas belajar.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                       ),
                      ),

                      SizedBox(height: 20,),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width:2, color: Colors.grey[300]!),
                        ),

                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(Icons.school_outlined,size: 50, color: Colors.orange,),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pengajuan Kompetensi oleh Siswa',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 45, 73),
                                ),
                              ),
                              Text(
                                'Siswa dapat mengajukan kompetensi yang telah \n'
                                'dikuasai untuk diverifikasi oleh guru.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                       ),
                      ),

                      SizedBox(height: 20,),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width:2, color: Colors.grey[300]!),
                        ),

                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(Icons.edit_document,size: 50, color: Colors.green,),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Validasi dan Tanda Tangan Guru',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 45, 73),
                                ),
                              ),
                              Text(
                                'Setiap kompetensi yang disetujui akan diberikan \n'
                                'tanda terima dan tanda tangan guru sebagai bukti.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                       ),
                      ),

                      SizedBox(height: 20,),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width:2, color: Colors.grey[300]!),
                        ),

                       child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(Icons.monitor,size: 50, color: Colors.pink,),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pantauan Real-Time dan Transparan',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 45, 73),
                                ),
                              ),
                              Text(
                                'Monitoring langsung, menciptakan lingkungan \n'
                                'belajar yang efisien.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                       ),
                      ),
                    ],
                  ),
                ),
              ),
                    Container(
                width: double.infinity,
                color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            children: [
                              Text(
                                '© GEN-28 PPLG SMK Wikrama Bogor.\n'
                                ' All Rights Reserved.',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),

                              Spacer(),

                              Icon(Icons.chat_bubble_rounded,size: 30, color: Colors.white,),
                              SizedBox(width: 5,),
                              Icon(Icons.camera_alt_outlined,size: 30, color: Colors.white,),
                              SizedBox(width: 5,),
                              Icon(Icons.dataset_linked,size: 30, color: Colors.white,),
                              SizedBox(width: 5,),
                              Icon(Icons.play_circle_sharp,size: 30, color: Colors.white,),
                            ],
                          ),
                        ),
                      ),
            ],
          ),
        ),
      ),
        floatingActionButton: FloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}