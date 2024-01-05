import 'package:app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widgets/login_form_widget.dart';
import 'package:app/controllers/user_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          await userController.login(
            userController.emailController.text,
            userController.passwordController.text,
          );
          Get.offNamed(Routes.onBoardingPageRoute);
        },
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Container(
              color: Theme.of(context).colorScheme.primary,
              height: 70,
              child: Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize:
                        Theme.of(context).textTheme.displaySmall!.fontSize! *
                            1.5,
                    fontWeight:
                        Theme.of(context).textTheme.displayMedium!.fontWeight,
                  ),
                ),
              ),
            ),
          ),
        ),
      body: Expanded(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontWeight,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Please enter your data to continue",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontWeight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                const LoginForm(),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: RichText(
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
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
