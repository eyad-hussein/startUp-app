import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/auth/login-screen/login_form_widget.dart';
import 'package:app/widgets/auth/login-screen/login_header_widget.dart';
import 'package:app/widgets/custom_button_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';
import 'package:app/widgets/auth/login-screen/special_button.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // bottomNavigationBar: GestureDetector(
      //   onTap: () async {
      //     if (formKey.currentState?.validate() ?? false) {
      //       try {
      //         await authController.login();
      //         Get.offNamed(Routes.productSearchRoute);
      //       } catch (e) {
      //         // AUTH FAILED MESSAGE
      //         print(e);
      //       }
      //     } else {
      //       // FORM NOT SUBMITTED MESSAGE
      //       print('Form no submitted');
      //     }
      //   },
      //   child: const MainBottomNavigationBar(content: "Log In"),
      // ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: kVerticalSpaceMedium,
              ),
              const LoginHeader(),
              const SizedBox(
                height: kVerticalSpaceMedium * 1.5,
              ),
              SizedBox(
                height: kVerticalSpaceMassive * 1.7,
                child: LoginForm(
                  formKey: formKey,
                ),
              ),
              SpecialButton(
                text: 'Continue',
                color: Colors.black,
                onPressed: () {
                  // Handle button press
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: kVerticalSpaceRegular),
                child: Text(
                  '────────── or login with ──────────',
                  style: kBodyLarge.copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(height: kVerticalSpaceRegular),
              SpecialButton(
                text: 'Facebook',
                onPressed: () {
                  // Handle button press
                },
                color: Colors.blue,
                borderRadius: kBorderRadiusRegular,
                icon: FontAwesomeIcons.facebook,
                iconColor: Colors.white,
              ),
              const SizedBox(height: kVerticalSpaceRegular),
              SpecialButton(
                text: 'X',
                onPressed: () {
                  // Handle button press
                },
                color: Colors.black,
                borderRadius: kBorderRadiusRegular,
                icon: FontAwesomeIcons.x,
                iconColor: Colors.white,
              ),
              const SizedBox(height: kVerticalSpaceRegular),
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
              // const SizedBox(height: kVerticalSpaceTiny), // For spacing
              // CustomButton(CustomButtonType.social,
              //     content: 'Google', borderRadius: kBorderRadiusMedium, onPressed: () {
              //   // Handle button press
              // }),
            ],
          )
        ],
      ),
    );
  }
}
