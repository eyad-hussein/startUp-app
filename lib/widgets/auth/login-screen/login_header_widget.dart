// login_header_widget.dart
// ignore_for_file: unused_import

import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/shared/header_widget.dart';
import 'package:app/widgets/shared/sub_header_widget.dart';
import 'package:app/shared/themes.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';
import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 250,
          height: 150,
        ),
        const Text(
          'Login',
          style: kTitleLarge,
        ),
      ],
    );
  }
}
