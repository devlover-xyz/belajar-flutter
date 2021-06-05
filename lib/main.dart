import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadhan_karim/pages/second_page.dart';

void main() {
  runApp(GetMaterialApp(home: Home(),));
}

class Home extends StatelessWidget {
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //navigation 
              Get.to(SecondPage());
            },
            child: Text('Go to second page')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
