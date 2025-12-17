import 'package:flutter/material.dart';
import 'package:projek_jurnalku_to_mobile/Panduan_Pengguna.dart';
import 'package:projek_jurnalku_to_mobile/jurnal_Pembiasaan.dart';
import 'package:projek_jurnalku_to_mobile/progress.dart';
import 'package:projek_jurnalku_to_mobile/login.dart';
import 'package:projek_jurnalku_to_mobile/pembiasaan(more).dart';
import 'package:projek_jurnalku_to_mobile/permintaan_saksi.dart';
import 'package:projek_jurnalku_to_mobile/setting_account.dart';
import 'package:projek_jurnalku_to_mobile/dashboard.dart';
import 'package:projek_jurnalku_to_mobile/explore.dart';
import 'package:projek_jurnalku_to_mobile/profile.dart';
import 'package:projek_jurnalku_to_mobile/explore_no_login.dart';
import 'package:projek_jurnalku_to_mobile/catatan_sikap.dart';
import 'package:projek_jurnalku_to_mobile/detail_kelengkapanprofile.dart';
import 'package:projek_jurnalku_to_mobile/detail_mengelolaforto.dart';
import 'package:projek_jurnalku_to_mobile/detail_mengisijurnal.dart';
import 'package:projek_jurnalku_to_mobile/detail_mengelolaserti.dart';
import 'package:projek_jurnalku_to_mobile/detail_ubahpassword.dart';
import 'package:projek_jurnalku_to_mobile/detail_unggahprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jurnalku',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/dashboard': (context) => Dashboard(),
        '/explore': (context) => Explore(),
        '/explore_no_login': (context) => ExploreNoLogin(),
        '/profile': (context) => Profile(),
        '/progress': (context) => ProgressPage(),
        '/setting_account': (context) => SettingAccount(),
        '/panduan_pengguna': (context) => PanduanPage(),
        '/jurnal_pembiasaan': (context) => JurnalPembiasaan(),
        '/permintaan_saksi': (context) => Saksi(),
        '/catatan_sikap': (context) => Catatan(),
        '/pembiasaan_more': (context) => More(),
        '/detail_kelengkapanprofile': (context) => DetailKelengkapanprofile(),
        '/detail_mengelolaforto': (context) => DetailMengelolaforto(),
        '/detail_mengisijurnal': (context) => DetailMengisijurnal(),
        '/detail_mengelolaserti': (context) => DetailMengelolaserti(),
        '/detail_ubahpassword': (context) => DetailUbahpassword(),
        '/detail_unggahprofile': (context) => DetailUnggahprofile(),
      },
    );
  }
}

