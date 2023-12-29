import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:app/models/user.dart';
import 'package:app/repositories/user_repository.dart';

class UserController extends GetxController {
  final UserRepository userRepository = UserRepository();
  final Rx<User> user = User(
    name: '',
    email: '',
  ).obs;

  RxString password = ''.obs;
  RxString passwordConfirmation = ''.obs;

  late TextEditingController passwordController;
  late TextEditingController passwordConfirmationController;

  @override
  void onInit() {
    super.onInit();

    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();

    ever(
      password,
      (_) => passwordController.text = password.value,
    );
    ever(
      passwordConfirmation,
      (_) => passwordConfirmationController.text = passwordConfirmation.value,
    );
  }

  @override
  void onClose() {
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.onClose();
  }

  Future<void> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    try {
      final newUser = await userRepository.register(
        name,
        email,
        password,
        passwordConfirmation,
      );
      user(newUser);
    } catch (e) {
      print('Error registering user: $e');
    }
  }

  Future<void> login(
    String email,
    String password,
  ) async {
    try {
      final authenticatedUser = await userRepository.login(email, password);
      user(authenticatedUser);
      print(password);
    } catch (e) {
      print(e);
    }
  }
}
