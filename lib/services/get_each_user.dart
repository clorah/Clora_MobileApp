import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Mi {
  String userId;
  String userName;
  String docName;
  String status;
  DateTime dateCreated;
  DateTime dateEdited;

  Mi({
   required this.userId,
      required this.userName,
      required this.dateCreated,
      required this.dateEdited,
      required this.docName,
      required this.status
  });
  factory Mi.fromJson(Map<String, dynamic> json) => Mi(
        docName: json["docName"],
        status : json["status"],
        userId: json['id'],
        dateCreated: DateTime.parse(json['dateCreated']) ,
        dateEdited: DateTime.parse(json['dateModified']),
        userName: json['patientName']
      );
}

Future<Mi > getMi() async {
  final response =
      await http.get(Uri.parse('https://zealworksimages.com.ng/clora/api/users'));
  if (response.statusCode == 200) {
    return Mi.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
