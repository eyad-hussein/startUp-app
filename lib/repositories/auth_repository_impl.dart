import 'dart:math';
import 'package:app/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
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
