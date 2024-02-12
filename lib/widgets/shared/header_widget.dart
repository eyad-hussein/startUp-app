import 'package:flutter/material.dart';
import 'package:app/shared/themes.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: kPrimaryTextTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
