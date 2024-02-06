import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/routes.dart';
import 'package:app/widgets/auth/auth_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// TODO :: check whether to add rememberme option or not
// TODO:: sign up button ui
class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const LoginForm({super.key, required this.formKey});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // bool _rememberMe = false;
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: widget.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            AuthFormField(
              label: 'Email',
              type: AuthFormFieldType.email,
              onChanged: (value) =>
                  _authController.emailController.text = value,
            ),
            const SizedBox(height: 20),
            AuthFormField(
              label: 'Password',
              type: AuthFormFieldType.password,
              onChanged: (value) =>
                  _authController.passwordController.text = value,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.signupScreenRoute);
                  },
                  child: Text(
                    'Sign Up?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.signupScreenRoute);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     const Text("Remember me"),
            //     Transform.scale(
            //       origin: const Offset(45, 0),
            //       scale: 0.7,
            //       child: Switch.adaptive(
            //           inactiveThumbColor:
            //               Theme.of(context).colorScheme.secondary,
            //           inactiveTrackColor:
            //               Theme.of(context).colorScheme.background,
            //           activeColor: Theme.of(context).colorScheme.background,
            //           activeTrackColor: const Color(0xFF34C559),
            //           value: _rememberMe,
            //           onChanged: (value) =>
            //               setState(() => _rememberMe = value)),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
