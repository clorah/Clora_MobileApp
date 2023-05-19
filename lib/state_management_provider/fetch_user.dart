import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class FetchUser extends ChangeNotifier {
  List<dynamic> _map = [];
  List<dynamic> _users = [];
  bool error = false;
  String message = '';

  String title = '';
  String description = '';

  List<dynamic> get map => _map;
  List<dynamic> get user => _users;
  bool get errors => error;
  String get messages => message;
  static const headers = {'Content-Type': 'application/json'};

  Future<void> fetchData() async {
    final response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      _map = jsonDecode(response.body);
    } else {
      throw Exception('Failed to load album');
    }
    notifyListeners();
  }

  Future<void> postData() async {
    final res = await post(Uri.parse('https://dummyjson.com/auth/login'),
        body: {"email": title, "password": description});
    if (res.statusCode == 200) {
      print('succesfull login');
      var data = jsonDecode(res.body);
      print(data['token']);
    } else {
      print('invalid credentials');
    }
  }
}
