import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  AppState();
  String name = '';

  void setName(String text) {
    name = text;
    notifyListeners();
  }

  String get getName => name;
}
