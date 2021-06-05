import 'package:flutter/material.dart';
import 'package:ramadhan_karim/pages/customer_form_page.dart';
import 'package:ramadhan_karim/pages/handle_back_page.dart';
import 'package:ramadhan_karim/pages/receipt_data_page.dart';
import 'package:ramadhan_karim/pages/simple_page.dart';
import 'package:ramadhan_karim/pages/without_history_page.dart';

import 'models/customer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SimplePage()));
              },
              child: Text('Basic Navigation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => WithoutHistoryPage()));
              },
              child: Text('Without History'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HandleBackPage()));
              },
              child: Text('Handle Back'),
            ),

            ElevatedButton(
              onPressed: () {

                Customer customer = Customer('aviq', 'wonosobo');

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReceiptDataPage(customer: customer)));
              },
              child: Text('Send Data'),
            ),

            ElevatedButton(
              onPressed: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CustomerFormPage()));
              },
              child: Text('Form Customer'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
