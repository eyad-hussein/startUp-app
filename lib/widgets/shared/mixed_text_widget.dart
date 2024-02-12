import 'package:app/shared/themes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MixedText extends StatelessWidget {
  final double fontSize;
  final String mainText;
  final String linkText;
  final String route;

  const MixedText({
    super.key,
    required this.fontSize,
    required this.mainText,
    required this.linkText,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Theme.of(context).colorScheme.tertiary,
          fontSize: fontSize,
          height: 1.4,
        ),
        children: [
          TextSpan(text: mainText),
          TextSpan(
            text: linkText,
            style: kPrimaryTextTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer() // ignore: deprecated_member_use
              ..onTap = () => Get.toNamed(route),
          ),
        ],
      ),
    );
  }
}
