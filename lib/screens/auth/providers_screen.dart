import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widgets/custom_button_widget.dart';

class ProvidersScreen extends StatelessWidget {
  const ProvidersScreen({super.key});

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
        onTap: () {},
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
                'Create an Account',
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
                        'Let\'s Get Started',
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
                        type: CustomButtonType.SOCIAL,
                      ),
                      const SizedBox(height: 5),
                      CustomButton(
                        content: 'Twitter',
                        onPressed: () {},
                        type: CustomButtonType.SOCIAL,
                      ),
                      const SizedBox(height: 5),
                      CustomButton(
                        content: 'Google',
                        onPressed: () {},
                        type: CustomButtonType.SOCIAL,
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
            )
          ],
        ),
      ),
    );
  }
}
