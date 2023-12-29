import 'package:app/widgets/custom_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/controllers/user_controller.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _rememberMe = false;
  final UserController _userController = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            CustomFormField(
              label: 'Full Name',
              type: CustomFormFieldType.NAME,
              onChanged: (value) {
                _userController.nameController.text = value;
              },
            ),
            const SizedBox(height: 20),
            CustomFormField(
              label: 'Password',
              type: CustomFormFieldType.PASSWORD,
              onChanged: (value) =>
                  _userController.passwordController.text = value,
            ),
            const SizedBox(height: 20),
            CustomFormField(
              label: 'Confirm Password',
              type: CustomFormFieldType.PASSWORD,
              onChanged: (value) =>
                  _userController.passwordConfirmationController.text = value,
            ),
            const SizedBox(height: 20),
            CustomFormField(
              label: 'Email',
              type: CustomFormFieldType.NAME,
              onChanged: (value) =>
                  _userController.emailController.text = value,
            ),
            const SizedBox(height: 50),
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
