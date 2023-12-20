import 'package:app/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Log In",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.background,
                  fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
                  fontWeight:
                      Theme.of(context).textTheme.displayMedium!.fontWeight,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.displayMedium!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.displayMedium!.fontWeight,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Please enter your data to continue",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize:
                        Theme.of(context).textTheme.displaySmall!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.displaySmall!.fontWeight,
                  ),
                ),
              ],
            ),
          ),
          const LoginForm(),
        ],
      ),
    );
  }
}
