import 'package:flutter/material.dart';

class HalamanKetiga extends StatelessWidget {

  static const String routeName = "/halamanKetiga";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Ketiga'),
      ),
      body: Center(
        child: Text('Halaman Ketiga')
      ),
    );
  }
}