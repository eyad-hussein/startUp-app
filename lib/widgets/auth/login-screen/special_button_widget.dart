import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // FontAwesome icons
import 'package:app/shared/ui/ui_helpers.dart'; // Ensure this has the necessary content for your app

class SpecialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Size minimumSize;
  final double borderRadius;
  final IconData? icon; // Optional icon data
  final Color? iconColor; // Optional icon color
  final double iconPadding; // Space between icon and text

  const SpecialButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.minimumSize = const Size(335, 50),
    this.borderRadius = kBorderRadiusSmall,
    this.icon,
    this.iconColor,
    this.iconPadding = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon != null
          ? Icon(icon, color: iconColor ?? Colors.white)
          : const SizedBox.shrink(),
      label: icon != null
          ? Row(
              mainAxisSize: MainAxisSize
                  .min, // To prevent the Row from occupying full width of the button
              children: [
                Text(text),
                SizedBox(width: iconPadding),
              ],
            )
          : Text(text),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Set button color
        foregroundColor: Colors.white,
        minimumSize: minimumSize,
        shape: RoundedRectangleBorder(
          // Define the button's shape
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
