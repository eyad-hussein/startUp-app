//login_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/routes.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/shared/themes.dart';
import 'package:app/widgets/auth/login-screen/login_header_widget.dart';
import 'package:app/widgets/auth/login-screen/login_form_widget.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';

enum MixedTextArgs { mainText, linkText, route }

const Map<MixedTextArgs, String> loginMixedText = {
  MixedTextArgs.mainText:
      "By connecting your account you confirm that you agree with our ",
  MixedTextArgs.linkText: "Terms and Conditions",
  MixedTextArgs.route:
      "Routes.termsAndConditionsScreenRoute", // Ensure this is correctly defined in your Routes
};

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(height: 2),
          const LoginHeaderWidget(),
          const SizedBox(height: 1),
          LoginForm(
              formKey:
                  formKey), // This contains your email, password fields, and continue button
          const SizedBox(height: kVerticalSpaceTiny),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kHorizontalSpaceTiny),
            child: MixedText(
              fontSize: kBodyLarge.fontSize!,
              mainText: loginMixedText[MixedTextArgs.mainText]!,
              linkText: loginMixedText[MixedTextArgs.linkText]!,
              route: loginMixedText[MixedTextArgs.route]!,
              onPressed: () {
                Get.toNamed(loginMixedText[MixedTextArgs.route]!);
              },
            ),
          ),
          // You can add more widgets here if needed
        ],
      ),
    );
  }
}
