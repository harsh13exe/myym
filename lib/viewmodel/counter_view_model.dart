import 'package:flutter/material.dart';
import 'package:mvvm_architecture/model/count_model.dart';

class CounterViewModel extends ChangeNotifier {
  CountModel _countModel = new CountModel(counter: 0);
  int get counter => _countModel.counter;
  void increment() {
    _countModel.counter++;
    notifyListeners();
  }
}
