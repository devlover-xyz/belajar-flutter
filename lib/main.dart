import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

void main() => runApp(RamadhanApp());

/* 
void main() {
  runApp(MyApp());
}
 */

class RamadhanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Ramadhan'),
        ),
        body: Center(
          child: Text(
            "ini aplikasi ramadhan",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: "347AF0".toColor() //Color(0XFF347AF0)
            ),
          ),
        ),
      ),
    );
  }
}
