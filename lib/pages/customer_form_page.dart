import 'package:flutter/material.dart';
import 'package:ramadhan_karim/models/customer.dart';
import 'package:ramadhan_karim/pages/receipt_data_page.dart';

class CustomerFormPage extends StatefulWidget {
  const CustomerFormPage({Key key}) : super(key: key);

  @override
  _CustomerFormPageState createState() => _CustomerFormPageState();
}

class _CustomerFormPageState extends State<CustomerFormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool isValid() {
    if (nameController.text.isEmpty) {
      return false;
    }

    if (addressController.text.isEmpty) {
      return false;
    }

    return true;
  }

  sendData() {
    if (isValid()) {
      Customer customer = Customer(nameController.text, addressController.text);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ReceiptDataPage(customer: customer)));
    } else {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Data tidak valid'),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'))
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Customer'),
        actions: [
          ElevatedButton(
              onPressed: () {
                sendData();
              },
              child: Text(
                'Send',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name'),
              TextField(
                controller: nameController,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text('Address'),
              TextField(
                controller: addressController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
