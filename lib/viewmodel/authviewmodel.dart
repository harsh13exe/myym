import 'package:flutter/material.dart';
import 'package:mvvm_architecture/model/authmodel.dart';

class AuthViewModel extends ChangeNotifier {
  bool _isAuthenticated = false;
  AuthModel? _authModel;
  bool get isAuthenticated => _isAuthenticated;
  AuthModel? get user => _authModel;

  Future<void> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    _authModel = AuthModel(email: email, token: password);
    _isAuthenticated = true;
    notifyListeners();
  }

  logout() async {
    _authModel = null;
    _isAuthenticated = false;
    notifyListeners();
  }
}
