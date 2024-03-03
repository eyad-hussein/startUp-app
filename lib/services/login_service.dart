import 'package:flutter/material.dart';
import '../repositories/auth_repository.dart';

class LoginService with ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> loginWithGoogle() async {
    try {
      await _authRepository.signInWithGoogle();
      _isLoggedIn = true;
      notifyListeners();
    } catch (e) {
      _isLoggedIn = false;
      // Handle error or show a message to the user
      print('Error logging in with Google: $e');
    }
  }

  Future<void> loginWithFacebook() async {
    try {
      await _authRepository.signInWithFacebook();
      _isLoggedIn = true;
      notifyListeners();
    } catch (e) {
      _isLoggedIn = false;
      // Handle error or show a message to the user
      print('Error logging in with Facebook: $e');
    }
  }

  Future<void> loginWithTwitter() async {
    try {
      await _authRepository.signInWithTwitter();
      _isLoggedIn = true;
      notifyListeners();
    } catch (e) {
      _isLoggedIn = false;
      // Handle error or show a message to the user
      print('Error logging in with Twitter: $e');
    }
  }
}
