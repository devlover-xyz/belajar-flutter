import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'request_service.dart';

class UserService {
  final resultNotifier = ValueNotifier<RequestState>(RequestInitial());

  String baseUrl = 'https://reqres.in/api';

  Future<void> getAllUser() async {
    resultNotifier.value = RequestLoadInProgress();
    final uri = Uri.parse("$baseUrl/users?page=1");

    final response = await get(uri);
    print(response.body);
    _handleResponse(response);
  }

  Future<void> getSingleUser(String id) async {
    resultNotifier.value = RequestLoadInProgress();
    final uri = Uri.parse("$baseUrl/users/" + id);

    final response = await get(uri);
    print(response.body);
    _handleResponse(response);
  }

  Future<void> createUser() async {
    resultNotifier.value = RequestLoadInProgress();
    final uri = Uri.parse("$baseUrl/users");
    final headers = {"Content-type": "application/json"};
    final json = '{"name": "amran", "job": "leader"}';

    final response = await post(uri, headers: headers, body: json);
    print(response.body);
    _handleResponse(response);
  }

  Future<void> updateUser(String id) async {
    resultNotifier.value = RequestLoadInProgress();
    final uri = Uri.parse("$baseUrl/users/" + id);
    final headers = {"Content-type": "application/json"};
    final json = '{"name": "aviq", "job": "programmer"}';

    final response = await put(uri, headers: headers, body: json);
    print(response.body);
    _handleResponse(response);
  }

  Future<void> deleteUser(String id) async {
    resultNotifier.value = RequestLoadInProgress();
    final uri = Uri.parse("$baseUrl/users/" + id);

    final response = await delete(uri);
    print(response.body);
    _handleResponse(response);
  }

  void _handleResponse(Response response) {
    if (response.statusCode >= 400) {
      resultNotifier.value = RequestLoadFailure();
    } else {
      resultNotifier.value = RequestLoadSuccess(response.body);
    }
  }
}
