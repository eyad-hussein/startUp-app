import 'package:app/models/user.dart';
import 'package:app/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthRepository authRepository = AuthRepository();
  final RxBool isLoggedIn = false.obs;

  final RxBool isLogged = false.obs;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.onClose();
  }

  Future<void> checkInitialAuthentication() async {
    final token = await authRepository.getToken();
    if (token != null) {
      final isValidToken = await authRepository.validateToken(token);
      if (isValidToken) {
        isLoggedIn.value = true;
      }
    }
  }

  Future<void> register() async {
    try {
      final newUser = await authRepository.register(
        nameController.text,
        emailController.text,
        passwordController.text,
        passwordController.text,
      );
      // user(newUser);
    } catch (e) {
      print('Error registering user: $e');
    }
  }

  Future<User?> login() async {
    try {
      final authenticatedUser = await authRepository.login(
          emailController.text, passwordController.text);
      isLoggedIn.value = true;
      return authenticatedUser;
    } catch (e) {
      return null;
    }
  }

  Future<void> logout() async {
    try {
      isLoggedIn.value = false;
      await authRepository.logout();
    } catch (e) {
      print(e);
    }
  }
}
