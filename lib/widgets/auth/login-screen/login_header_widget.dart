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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image widget
          Image.asset(
            'assets/images/Styleach-No-Text.png',
            height: 100,
            width: 160,
          ),
          const SizedBox(height: kVerticalSpaceLarge),
          // Header widget
          const Header(
            title: "Login",
          ),
        ],
      ),
    );
  }
}
