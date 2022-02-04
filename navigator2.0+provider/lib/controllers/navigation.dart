import 'package:flutter/material.dart';

class NavigationController extends ChangeNotifier {
  String screenname = '/';

  void changeScreen(String newstringname) {
    screenname = newstringname;
    notifyListeners();
  }
}