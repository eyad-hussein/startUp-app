import 'package:app/shared/ui/ui_helpers.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: kTitleLarge.copyWith(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
