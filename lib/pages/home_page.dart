import 'package:flutter/material.dart';
import 'package:ramadhan_karim/services/request_service.dart';
import 'package:ramadhan_karim/services/user_service.dart';

class HomePage extends StatelessWidget {
  final userService = UserService();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Center(
          child: Wrap(
            spacing: 50,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: userService.getAllUser,
                child: Text('GET ALL'),
              ),
               ElevatedButton(
                onPressed: (){
                  userService.getSingleUser("1");
                },
                child: Text('GET SINGLE'),
              ),
              ElevatedButton(
                onPressed: () {
                  userService.createUser();
                },
                child: Text('CREATE'),
              ),
              ElevatedButton(
                onPressed: () {
                  userService.updateUser("2");
                },
                child: Text('Edit'),
              ),
              ElevatedButton(
                onPressed: () {
                  userService.deleteUser("1");
                },
                child: Text('DELETE'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        ValueListenableBuilder(
          valueListenable: userService.resultNotifier,
          builder: (context, requestState, child) {
            print(requestState);

            if (requestState is RequestLoadInProgress) {
              return CircularProgressIndicator();
            } else if (requestState is RequestLoadSuccess) {
              return Expanded(
                  child: SingleChildScrollView(child: Text(requestState.body)));
            } else {
              return Container();
            }
          },
        ),

        /// load pertama kali
        /* FutureBuilder(
          future: singleUser("1"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
                return Text("Error");
              }
              return Text('Email from User JSON : ${snapshot.data.email}');
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ), */
      ],
    );
  }
}