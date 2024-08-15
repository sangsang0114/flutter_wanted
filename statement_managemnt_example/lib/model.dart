import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier{
  int value = 0;

  void incremenet({int counter = 1}){
    value += counter;
    notifyListeners();
  }

  void decrement({int counter = 1}) {
    value -= counter;
    notifyListeners();
  }
}