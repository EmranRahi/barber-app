import 'package:flutter/cupertino.dart';

class VendorProvider extends ChangeNotifier {
  int value = 0;
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

  int myValue = -1;

  myBorderChangingFun(int x) {
    myValue = x;
    notifyListeners();
  }
}
