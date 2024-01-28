import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final double height;
  final String text;
  const CustomBottomNavBar(
      {super.key, required this.height, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.0,
          colors: [
            Colors.black.withOpacity(0.75),
            Colors.black.withOpacity(1.0),
          ],
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            color: Color(0xFFFEFEFE),
          ),
        ),
      ),
    );
  }
}
