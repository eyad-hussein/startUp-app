import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/auth/auth_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// TODO :: update checkmark for name field
// TODO :: add logic for password verification
class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  // bool _rememberMe = false;
  final AuthController _authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceRegular),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: widget.formKey,
        child: Column(
          children: [
            AuthFormField(
              label: 'Full Name',
              type: AuthFormFieldType.name,
              onChanged: (value) {
                _authController.nameController.text = value;
              },
            ),
            const SizedBox(height: verticalSpaceRegular),
            AuthFormField(
              label: 'Password',
              type: AuthFormFieldType.password,
              onChanged: (value) =>
                  _authController.passwordController.text = value,
            ),
            const SizedBox(height: verticalSpaceRegular),
            AuthFormField(
              label: 'Confirm Password',
              type: AuthFormFieldType.password,
              onChanged: (value) =>
                  _authController.passwordConfirmationController.text = value,
            ),
            const SizedBox(height: verticalSpaceRegular),
            AuthFormField(
              label: 'Email',
              type: AuthFormFieldType.email,
              onChanged: (value) =>
                  _authController.emailController.text = value,
            ),
            // const SizedBox(height: 50),
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
