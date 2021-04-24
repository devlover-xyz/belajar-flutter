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
          title: Text('Aplikasi Latihan Layout'),
        ),
        body: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
