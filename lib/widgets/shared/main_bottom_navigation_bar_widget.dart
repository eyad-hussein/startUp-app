import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final String content;

  const MainBottomNavigationBar({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        height: 70,
        child: Center(
          child: Text(
            content,
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
              fontSize:
              Theme.of(context).textTheme.displaySmall!.fontSize! * 1.5,
              fontWeight:
              Theme.of(context).textTheme.displayMedium!.fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
