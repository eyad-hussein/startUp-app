import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class LoginService with ChangeNotifier {
  final Random _random;

  LoginService({Random? random}) : _random = random ?? Random();

  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> signInWithGoogle() async {
    await _simulateNetworkDelay();
    if (_random.nextBool()) {
      print('Successfully signed in with Google');
      _isLoggedIn = true;
      notifyListeners();
    } else {
      _isLoggedIn = false;
      // Handle error or show a message to the user
      print('Error logging in with Google');
      throw SignInException('Failed to sign in with Google');
    }
  }

  Future<void> signInWithFacebook() async {
    await _simulateNetworkDelay();
    if (_random.nextBool()) {
      print('Successfully signed in with Facebook');
      _isLoggedIn = true;
      notifyListeners();
    } else {
      _isLoggedIn = false;
      // Handle error or show a message to the user
      print('Error logging in with Facebook');
      throw SignInException('Failed to sign in with Facebook');
    }
  }

  Future<void> signInWithTwitter() async {
    await _simulateNetworkDelay();
    if (_random.nextBool()) {
      print('Successfully signed in with Twitter');
      _isLoggedIn = true;
      notifyListeners();
    } else {
      _isLoggedIn = false;
      // Handle error or show a message to the user
      print('Error logging in with Twitter');
      throw SignInException('Failed to sign in with Twitter');
    }
  }

  Future<void> _simulateNetworkDelay() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  Future<void> signInWithSocialMedia(String providerType) async {
    switch (providerType) {
      case 'google':
        await signInWithGoogle();
        break;
      case 'facebook':
        await signInWithFacebook();
        break;
      case 'twitter':
        await signInWithTwitter();
        break;
      default:
        throw Exception('Provider not supported');
    }
  }
}

class SignInException implements Exception {
  final String message;

  SignInException(this.message);
}
