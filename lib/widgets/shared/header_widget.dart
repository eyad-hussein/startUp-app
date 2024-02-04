import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: Theme.of(context)
            .textTheme
            .displayMedium!
            .fontSize,
        fontWeight: Theme.of(context)
            .textTheme
            .displayMedium!
            .fontWeight,
      ),
    );
  }
}
