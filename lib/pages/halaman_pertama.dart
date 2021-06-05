import 'package:flutter/material.dart';
import 'package:ramadhan_karim/pages/halaman_kedua.dart';
import 'package:ramadhan_karim/pages/halaman_ketiga.dart';

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pertama'),
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, HalamanKedua.routeName);
              },
              child: Text('Pindah Halaman Kedua'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, HalamanKetiga.routeName);
              },
              child: Text('Pindah Halaman Ketiga'),
            ),
          ],
        ),
      ),
    );
  }
}
