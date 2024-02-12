import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/shared/header_widget.dart';
import 'package:app/widgets/shared/sub_header_widget.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Header(
            title: "Welcome",
          ),
          SizedBox(
            height: verticalSpaceTiny,
          ),
          SubHeader(
            title: "Please enter your data to continue",
          )
        ],
      ),
    );
  }
}
