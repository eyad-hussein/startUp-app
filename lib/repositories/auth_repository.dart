import 'dart:math';
import 'package:app/interfaces/auth_repository_interface.dart';

class AuthRepository implements AuthRepositoryInterface {
  final Random _random = Random();

  @override
  Future<void> signInWithGoogle() async {
    await Future.delayed(Duration(seconds: 2));
    if (_random.nextBool()) {
      print('Successfully signed in with Google');
    } else {
      throw Exception('Failed to sign in with Google');
    }
  }

  @override
  Future<void> signInWithFacebook() async {
    await Future.delayed(Duration(seconds: 2));
    if (_random.nextBool()) {
      print('Successfully signed in with Facebook');
    } else {
      throw Exception('Failed to sign in with Facebook');
    }
  }

  @override
  Future<void> signInWithTwitter() async {
    await Future.delayed(Duration(seconds: 2));
    if (_random.nextBool()) {
      print('Successfully signed in with Twitter');
    } else {
      throw Exception('Failed to sign in with Twitter');
    }
  }
}
