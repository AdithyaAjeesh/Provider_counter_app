import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get counts => _count;
  void increment() {
    _count = _count + 1;
    notifyListeners();
  }

  void decrement() {
    _count = _count - 1;
    notifyListeners();
  }
  
  void deleteCount() {
    _count = _count = 0;
    notifyListeners();
  }
}
