import 'package:app/controllers/auth_controller.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/auth/signup-screen/signup_form_widget.dart';
import 'package:app/widgets/shared/header_widget.dart';
import 'package:app/widgets/shared/main_app_bar_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/shared/routes.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final AuthController authController = Get.find<AuthController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          if (formKey.currentState?.validate() ?? false) {
            try {
              await authController.register();
              Get.offNamed(Routes.verificationCodeRoute);
            } catch (e) {
              // AUTH FAILED MESSAGE
              print(e);
            }
          } else {
            // FORM NOT SUBMITTED MESSAGE
            print('Form no submitted');
          }
        },
        child: const MainBottomNavigationBar(content: "Sign Up"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: verticalSpaceMedium,
          ),
          const Center(
            child: Header(title: "Sign Up"),
          ),
          const SizedBox(
            height: verticalSpaceMassive * 0.8,
          ),
          Expanded(
            child: ListView(
              children: [
                SignUpForm(
                  formKey: formKey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: verticalSpaceRegular,
          ),
        ],
      ),
    );
  }
}
