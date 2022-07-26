import 'package:flutter/cupertino.dart';

class ChooseProvider extends ChangeNotifier {
  bool vlaue = false;
  int myValue = -1;

  myBorderChangingFun(int x) {
    myValue = x;
    notifyListeners();
  }
}
