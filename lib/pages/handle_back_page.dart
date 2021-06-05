import 'package:flutter/material.dart';

class HandleBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Handle back page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Coba tekan back button'),
              ],
            ),
          ),
        ),
        onWillPop: () {
          return onBackButton(context);
        });
  }

  Future<bool> onBackButton(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Back'),
            content: Text('Yakin mau kembali ke halaman home?'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('OK'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('Cancel'),
              ),
            ],
          );
        });
  }
}
