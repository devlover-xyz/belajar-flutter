import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class SecondPage extends StatelessWidget {

final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Pages'),),
      body: Center(
        child: Text("${c.count}"),
      ),
      
    );
  }
}