import 'package:flutter/material.dart';
import 'package:ramadhan_karim/pages/halaman_kedua.dart';
import 'package:ramadhan_karim/pages/halaman_ketiga.dart';
import 'package:ramadhan_karim/pages/halaman_pertama.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ROuting Navigation',
    initialRoute: '/',
    routes: {
      '/' : (context) => HalamanPertama(),
      HalamanKedua.routeName : (context) => HalamanKedua(),
      HalamanKetiga.routeName: (context) => HalamanKetiga()
    },

  ));
}

/* class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
} */