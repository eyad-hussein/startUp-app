import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/shared/themes.dart';
import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  final String title;

  const SubHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: kPrimaryTextTheme.displayLarge!.copyWith(
        color: Theme.of(context).colorScheme.tertiary,
        wordSpacing: wordSpaceSmall,
      ),
    );
  }
}
