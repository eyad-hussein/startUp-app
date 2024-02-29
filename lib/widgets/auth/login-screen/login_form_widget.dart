import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/routes.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/shared/themes.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';
import 'package:app/widgets/auth/login-screen/email_input_field.dart';
import 'package:app/widgets/auth/login-screen/password_input_field.dart';
import 'package:app/widgets/auth/login-screen/continue_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const LoginForm({super.key, required this.formKey});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final AuthController _authController = Get.find<AuthController>();

  void _login() async {
    if (widget.formKey.currentState?.validate() ?? false) {
      try {
        await _authController.login();
        Get.offNamed(Routes.productScreenRoute);
      } catch (e) {
        Get.snackbar('Login Error', 'Failed to login.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          const EmailInputField(),
          const SizedBox(height: kVerticalSpaceTiny),
          const PasswordInputField(),
          const SizedBox(height: kVerticalSpaceTiny),
          ContinueButton(onPressed: _login),
          const SizedBox(height: kVerticalSpaceTiny),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.signUpScreenRoute);
                },
                child: const Text(
                  'Sign Up?',
                  style: kBodyMedium,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.forgetPasswordEmailScreenRoute);
                },
                child: Text(
                  'Forgot Password?',
                  style: kBodyLarge.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
