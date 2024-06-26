import 'package:app/models/user_model.dart';
import 'package:app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthService _authService = Get.put(AuthService());

  final Rx<UserModel?> user = Rx<UserModel?>(null);
  final RxBool isLoggedIn = false.obs;
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

  Future<void> register() async {
    try {
      await _authService.register(
        nameController.text,
        emailController.text,
        passwordController.text,
        passwordController.text,
      );
    } catch (e) {
      throw Exception('Failed to register user');
    }
  }

  Future<bool> validateToken(String token) async {
    return await _authService.validateToken(token);
  }

  Future<void> login() async {
    try {
      user.value = await _authService.login(
        emailController.text,
        passwordController.text,
      );
      isLoggedIn.value = true;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> logout() async {
    try {
      isLoggedIn.value = false;
      await _authService.logout();
    } catch (e) {
      throw Exception('Failed to logout user');
    }
  }

  Future<void> checkInitialAuthentication() async {
    final token = await _authService.getToken();
    print(token);
    if (token != null) {
      final isValidToken = await _authService.validateToken(token);
      if (isValidToken) {
        isLoggedIn.value = true;
      }
    }
  }
}
