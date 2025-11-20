import 'package:flutter/material.dart';
import 'package:projek_jurnalku_to_mobile/catatan_sikap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Catatan(),
    );
  }
}
