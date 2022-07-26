import 'package:flutter/material.dart';

class SignIn_Provider extends ChangeNotifier {
  bool isSwitched = false;
  toggleSwitch(bool value) {
    if (isSwitched == false) {
      isSwitched = true;
      notifyListeners();
    } else {
      isSwitched = false;
      notifyListeners();
    }
  }
}
