import 'package:app/controllers/auth_controller.dart';
import 'package:app/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).colorScheme.primary),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: GestureDetector(
        onTap: () {
          authController.register();
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
                "Sign Up",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.background,
                  fontSize:
                      Theme.of(context).textTheme.displaySmall!.fontSize! * 1.5,
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
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Sign Up",
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 143,
                ),
                const SignUpForm(),
                const SizedBox(
                  height: 35,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
