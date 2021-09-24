import 'package:flutter/material.dart';
class MyCounter extends ChangeNotifier{
  int counter=0;
  String name="mohamed";
  inc(){
    counter++;
    notifyListeners();
  }
  changeName(){
 name="omar";
 notifyListeners();
  }
}