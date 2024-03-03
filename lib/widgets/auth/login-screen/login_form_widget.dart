import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/routes.dart';
import 'package:app/shared/themes.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/auth/auth_form_field_widget.dart';
import 'package:app/widgets/auth/login-screen/special_button_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpaceRegular),
      child: Form(
        key: widget.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            AuthFormField(
              label: '   Email Address',
              type: AuthFormFieldType.email,
              borderColor: Colors.grey.shade200,
              onChanged: (value) =>
                  _authController.emailController.text = value,
            ),
            const SizedBox(height: kVerticalSpaceRegular),
            AuthFormField(
              label: '  Password',
              type: AuthFormFieldType.password,
              borderColor: Colors.grey.shade200,
              onChanged: (value) =>
                  _authController.passwordController.text = value,
            ),
            const SizedBox(height: kVerticalSpaceTiny - 1),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.forgetPasswordEmailScreenRoute);
                },
                child: Text(
                  'Forgot Password?',
                  style: kBodyLarge.copyWith(
                    color: Colors.black,
                    decoration: TextDecoration
                        .underline, // Add this line to underline the text
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
