import 'package:flutter/material.dart';

class WithoutHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Tanpa Histori'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('setelah back aplikasi close'),
          ],
        ),
      ),
    );
  }
}
