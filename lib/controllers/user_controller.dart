import 'package:get/get.dart';
import 'package:app/models/user.dart';
import 'package:app/repositories/user_repository.dart';

class UserController extends GetxController {
  final UserRepository userRepository = UserRepository();
  final Rx<User> user = User(
    name: '',
    email: '',
  ).obs;

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
    } catch (e) {
      print(e);
    }
  }
}
