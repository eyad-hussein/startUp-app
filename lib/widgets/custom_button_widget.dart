import 'package:flutter/material.dart';

enum CustomButtonType {
  primary,
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.content,
      required this.onPressed,
      this.type = CustomButtonType.primary});

  final CustomButtonType type;
  final String content;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.background,
      ),
      child: Text(
        content,
      ),
    );
  }
}
