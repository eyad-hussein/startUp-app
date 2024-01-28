import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/routes.dart';
import 'package:app/widgets/auth_form_field_widget.dart';
import 'package:app/controllers/user_controller.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _rememberMe = false;
  final UserController _userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            AuthFormField(
              label: 'Email',
              type: AuthFormFieldType.name,
              onChanged: (value) =>
                  _userController.emailController.text = value,
            ),
            const SizedBox(height: 20),
            AuthFormField(
              label: 'Password',
              type: AuthFormFieldType.password,
              onChanged: (value) =>
                  _userController.passwordController.text = value,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.signupScreenRoute);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Remember me"),
                Transform.scale(
                  origin: const Offset(45, 0),
                  scale: 0.7,
                  child: Switch.adaptive(
                      inactiveThumbColor:
                          Theme.of(context).colorScheme.secondary,
                      inactiveTrackColor:
                          Theme.of(context).colorScheme.background,
                      activeColor: Theme.of(context).colorScheme.background,
                      activeTrackColor: const Color(0xFF34C559),
                      value: _rememberMe,
                      onChanged: (value) =>
                          setState(() => _rememberMe = value)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
