import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:app/models/user.dart';
import 'package:app/repositories/user_repository.dart';

class UserController extends GetxController {
  final UserRepository userRepository = UserRepository();

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
      final newUser = await userRepository.register(
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


  Future<void> login() async {
    try {
      final authenticatedUser = await userRepository.login(
          emailController.text, passwordController.text);
      // user(authenticatedUser);
      print(passwordController.text);
    } catch (e) {
      print(e);
    }
  }
}
