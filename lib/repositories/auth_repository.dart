import 'dart:async';
import 'dart:math';

import 'package:app/interfaces/auth_repository_interface.dart';

class AuthRepository implements AuthRepositoryInterface {
  final Random _random;

  AuthRepository({Random? random}) : _random = random ?? Random();

  @override
  Future<void> signInWithGoogle() async {
    await _simulateNetworkDelay();
    if (_random.nextBool()) {
      print('Successfully signed in with Google');
    } else {
      throw SignInException('Failed to sign in with Google');
    }
  }

  @override
  Future<void> signInWithFacebook() async {
    await _simulateNetworkDelay();
    if (_random.nextBool()) {
      print('Successfully signed in with Facebook');
    } else {
      throw SignInException('Failed to sign in with Facebook');
    }
  }

  @override
  Future<void> signInWithTwitter() async {
    await _simulateNetworkDelay();
    if (_random.nextBool()) {
      print('Successfully signed in with Twitter');
    } else {
      throw SignInException('Failed to sign in with Twitter');
    }
  }

  Future<void> _simulateNetworkDelay() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}

class SignInException implements Exception {
  final String message;

  SignInException(this.message);
}
