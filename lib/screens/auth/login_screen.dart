import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/auth/login-screen/login_form_widget.dart';
import 'package:app/widgets/auth/login-screen/login_header_widget.dart';
import 'package:app/widgets/custom_button_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';
import 'package:app/widgets/auth/login-screen/special_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:app/shared/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Validation: email and password validations are also covered by GetX. Now you do not need to install a separate validation package
enum MixedTextArgs { mainText, linkText, route }

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthController authController = Get.find<AuthController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: kVerticalSpaceTiny / 4,
                ),
                const LoginHeader(),
                const SizedBox(
                  height: kVerticalSpaceMedium * 1.5,
                ),
                SizedBox(
                  height: kVerticalSpaceMassive * 1.7,
                  width: kHorizontalSpaceLarge * 8,
                  child: LoginForm(
                    formKey: formKey,
                  ),
                ),
                const SizedBox(
                  height: kVerticalSpaceMedium,
                ),

                SpecialButton(
                  text: 'Continue',
                  color: Colors.black,
                  minimumSize: const Size(176, 44),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kVerticalSpaceRegular),
                  child: Text(
                    '───────── or login with ─────────',
                    style: kBodyLarge.copyWith(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: kVerticalSpaceRegular),
                SpecialButton(
                  text: 'Facebook',
                  onPressed: () {
                    // Handle button press
                  },
                  color: const Color.fromARGB(255, 47, 85, 164),
                  borderRadius: kBorderRadiusRegular,
                  icon: FontAwesomeIcons.facebook,
                  iconColor: Colors.white,
                ),
                const SizedBox(height: kVerticalSpaceSmall),
                SpecialButton(
                  text: 'Twitter',
                  onPressed: () {
                    // Handle button press
                  },
                  color: Colors.lightBlue,
                  borderRadius: kBorderRadiusRegular,
                  icon: FontAwesomeIcons.twitter,
                  iconColor: Colors.white,
                ),
                const SizedBox(height: kVerticalSpaceSmall),
                SpecialButton(
                  text: 'Google',
                  onPressed: () {
                    // Handle button press
                  },
                  color: Colors.red,
                  borderRadius: kBorderRadiusRegular,
                  icon: FontAwesomeIcons.google,
                  iconColor: Colors.white,
                ),
                const SizedBox(
                  height: kVerticalSpaceMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kVerticalSpaceRegular),
                  child: RichText(
                    text: TextSpan(
                      style: kBodyLarge.copyWith(color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(
                            text: "Don't have an account? "), // Regular text
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold), // Bold text
                        ),
                      ],
                    ),
                  ),
                )

                // const SizedBox(height: kVerticalSpaceTiny), // For spacing
                // CustomButton(CustomButtonType.social,
                //     content: 'Google', borderRadius: kBorderRadiusMedium, onPressed: () {
                //   // Handle button press
                // }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
