import 'package:flutter/material.dart';
class stateManager extends ChangeNotifier {
  int selectedindex = 0;
  void selectedButton (int index){
    selectedindex = index;
    notifyListeners();
  }





}