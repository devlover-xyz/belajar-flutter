import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Simple page, pleas press back button'),
          ],
        ),
      ),
    );
  }
}
