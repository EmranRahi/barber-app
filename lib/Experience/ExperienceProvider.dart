import 'package:flutter/material.dart';

class ExperienceProvider extends ChangeNotifier {
  int value = 1;
  bool isvisible = false;

  setName(value) {
    if (value.length > 4) {
      isvisible = true;
      notifyListeners();
    } else {
      isvisible = false;
      notifyListeners();
    }
  }

  getValue(int x) {
    value = x;
    notifyListeners();
  }

  bool vlaue = false;
  int myValue = -1;

  myBorderChangingFun(int x) {
    myValue = x;
    notifyListeners();
  }
}
