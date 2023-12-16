import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  User() {}
  bool loggined = false;
  User? user;
  String? userMail;

  void login() {
    if (loggined == false) {
      loggined = !loggined;
    }
  }

  void logout() {
    loggined = false;
  }

  bool checkLogin() {
    if (loggined == false) {
      return false;
    } else {
      return true;
    }
  }
}
