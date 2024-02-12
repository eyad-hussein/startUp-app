import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/auth/login-screen/login_form_widget.dart';
import 'package:app/widgets/auth/login-screen/login_header_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/shared/routes.dart';
import 'package:app/shared/themes.dart';

enum MixedTextArgs { mainText, linkText, route }

const Map<MixedTextArgs, String> loginMixedText = {
  MixedTextArgs.mainText:
      "By connecting your account you confirm that you agree with our ",
  MixedTextArgs.linkText: "Terms and Conditions",
  MixedTextArgs.route: "Routes.termsAndConditionsScreenRoute",
};

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthController authController = Get.find<AuthController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          if (formKey.currentState?.validate() ?? false) {
            try {
              await authController.login();
              Get.offNamed(Routes.productSearchRoute);
            } catch (e) {
              // AUTH FAILED MESSAGE
              print(e);
            }
          } else {
            // FORM NOT SUBMITTED MESSAGE
            print('Form no submitted');
          }
        },
        child: const MainBottomNavigationBar(content: "Log In"),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: verticalSpaceLarge,
              ),
              const LoginHeader(),
              const SizedBox(
                height: verticalSpaceMassive,
              ),
              SizedBox(
                height: verticalSpaceMassive * 2.5,
                child: LoginForm(
                  formKey: formKey,
                ),
              ),
              const SizedBox(
                height: verticalSpaceRegular,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MixedText(
                  fontSize: kPrimaryTextTheme.displayMedium!.fontSize!,
                  mainText: loginMixedText[MixedTextArgs.mainText]!,
                  linkText: loginMixedText[MixedTextArgs.linkText]!,
                  route: loginMixedText[MixedTextArgs.route]!,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
