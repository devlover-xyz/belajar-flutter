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
          title: Text('Aplikasi Ramadhan Layout'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Text kolom 1"),
            Text("Text kolom 2"),
            Text("Text kolom 3"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text row 1"),
                Text("Text row 2"),
                Text("Text row 3"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
