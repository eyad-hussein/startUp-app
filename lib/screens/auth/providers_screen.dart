import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/shared/header_widget.dart';
import 'package:app/widgets/shared/main_app_bar_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widgets/custom_button_widget.dart';

// needs to be refactored
class ProvidersScreen extends StatelessWidget {
  const ProvidersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: GestureDetector(
        onTap: () {},
        child: const MainBottomNavigationBar(content: "Create An Account"),
      ),
      body: Expanded(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: verticalSpaceSmall,
            ),
            const Header(title: "Let's Get Started"),
            const SizedBox(
              height: 143,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                top: 50,
                bottom: 130,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    content: 'Facebook',
                    onPressed: () {},
                    type: CustomButtonType.social,
                  ),
                  const SizedBox(height: 5),
                  CustomButton(
                    content: 'Twitter',
                    onPressed: () {},
                    type: CustomButtonType.social,
                  ),
                  const SizedBox(height: 5),
                  CustomButton(
                    content: 'Google',
                    onPressed: () {},
                    type: CustomButtonType.social,
                  ),
                ],
              ),
            ),
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
                    const TextSpan(text: 'Already have an account? '),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
