import 'dart:convert';

import 'package:clora/api_response.dart';
import 'package:clora/users/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const apiResponse = 'https://fakestoreapi.com/products';

  Future<APIresponse<List<Users>>> getUsers() {
    return http.get(Uri.parse(apiResponse)).then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body) ;
        final users = <Users>[];
      
        for (var item in jsonData) {
          final user = Users(
              userId:  item['id'],
              userName: item['patientName'],
              dateCreated: DateTime.parse(item['dateCreated']),
              dateEdited: DateTime.parse(item['dateModified']),
              docName: item['docName'],
              status: item['status']);
          users.add(user);
        }
        return APIresponse<List<Users>>(data: users, errorMessage: 'f');
      }
        return APIresponse<List<Users>>( errorMessage: 'an error occured',response: true,data: const[]    );
    })
    ;
  }
}
