import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  final String title;

  const SubHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: Theme.of(context)
            .textTheme
            .displaySmall!
            .fontSize,
        fontWeight: Theme.of(context)
            .textTheme
            .displaySmall!
            .fontWeight,
      ),
    );
  }
}
