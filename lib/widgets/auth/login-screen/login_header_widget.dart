import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/shared/header_widget.dart';
import 'package:app/widgets/shared/sub_header_widget.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Vertically center elements
        children: [
          // Image widget
          Image.asset(
            'assets/images/logo.png',
            height: 150,
            width: 200, // Adjust sizing as needed
          ),
          const SizedBox(
              height:
                  kVerticalSpaceMedium), // Add spacing between image and text
          // Header widget
          const Header(
            title: "Login",
          ),
        ],
      ),
    );
  }
}
