import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum CustomButtonType { PRIMARY, SOCIAL }

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.content,
      required this.onPressed,
      this.type = CustomButtonType.PRIMARY});

  final CustomButtonType type;
  final String content;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final ElevatedButton button;

    if (type == CustomButtonType.PRIMARY) {
      button = ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.background,
        ),
        child: Text(
          content,
        ),
      );
    } else {
      final IconData icon;
      final Color buttonColor;

      switch (content) {
        case 'Google':
          icon = FontAwesomeIcons.google;
          buttonColor = const Color(0xFFEA4335);
          break;
        case 'Facebook':
          icon = FontAwesomeIcons.facebookF;
          buttonColor = const Color(0xFF4267B2);
          break;
        case 'Twitter':
          icon = FontAwesomeIcons.twitter;
          buttonColor = const Color(0xFF1DA1F2);
          break;
        default:
          icon = Icons.error;
          buttonColor = const Color(0x00000000);
      }

      button = ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(50, 45),
          backgroundColor: buttonColor,
          foregroundColor: Theme.of(context).colorScheme.background,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 15,
            ),
            const SizedBox(width: 10),
            Text(
              content,
            ),
          ],
        ),
      );
    }
    return button;
  }
}
