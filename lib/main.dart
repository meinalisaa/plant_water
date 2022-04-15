import 'package:flutter/material.dart';
import 'package:plant_water/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Water',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: MainScreen(),
    );
  }
}

//NOTE
//Maaf kakak/abang reviewer, saya tidak punya database jadi tumbuhannya hanya satu.
//Harusnya lebih bagus kalau cardnya rame banyak tumbuhan,
//Tapi saya lihat di requirements tidak harus ada jadi saya pakai satu data saja.
//Terima kasih banyak! -Meina