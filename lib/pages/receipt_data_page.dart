import 'package:flutter/material.dart';
import 'package:ramadhan_karim/models/customer.dart';

class ReceiptDataPage extends StatefulWidget {

  // property
  final Customer customer;

  //constructor
  const ReceiptDataPage({Key key, @required this.customer}) : super(key: key);

  @override
  _ReceiptDataPageState createState() => _ReceiptDataPageState(customer: customer);
}

class _ReceiptDataPageState extends State<ReceiptDataPage> {
  // property 
  Customer customer;

  //cunstructor
  _ReceiptDataPageState({@required this.customer}): super();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt Data'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Inserted Customer : '),
              Text('Name : ' + customer.name),
              Text('Address: ' + customer.address)
            ],
          ),
        ),
      ),
    );
  }
}
