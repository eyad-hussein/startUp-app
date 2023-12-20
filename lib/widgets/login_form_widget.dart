import 'package:app/widgets/custom_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            const CustomFormField(
              label: 'Full Name',
              type: CustomFormFieldType.name,
            ),
            const SizedBox(height: 20),
            const CustomFormField(
              label: 'Password',
              type: CustomFormFieldType.password,
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 15,
                    height: 1.4,
                  ),
                  children: [
                    const TextSpan(
                        text:
                            "By connecting your account confirm that you agree with our "),
                    TextSpan(
                      text: "Terms and Conditions",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
