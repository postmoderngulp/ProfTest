import 'package:flutter/material.dart';

class passTestCommonModel extends ChangeNotifier {
  bool firstCheck = false;
  bool secondCheck = false;
  bool thirdCheck = false;
  bool fourCheck = false;

  void setFirstCheck() {
    firstCheck = !firstCheck;
    notifyListeners();
  }

  void setSecondCheck() {
    secondCheck = !secondCheck;
    notifyListeners();
  }

  void setThirdCheck() {
    thirdCheck = !thirdCheck;
    notifyListeners();
  }

  void setFourCheck() {
    fourCheck = !fourCheck;
    notifyListeners();
  }
}
