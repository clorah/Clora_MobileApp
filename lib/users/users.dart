import 'package:flutter/material.dart';

class Users {
  String userId;
  String userName;
  String docName;
  String status;
  DateTime dateCreated;
  DateTime dateEdited;
  Users(
      {required this.userId,
      required this.userName,
      required this.dateCreated,
      required this.dateEdited,
      required this.docName,
      required this.status
      });
}
