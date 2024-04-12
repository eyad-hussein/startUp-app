import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  final String text;

  const CustomCategoryCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return Container(
      constraints: BoxConstraints(
        minWidth: getWidth(115),
        minHeight: getHeight(50),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF5F6FA),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
              color: Color(0xFF1D1E20),
            ),
          ),
        ],
      ),
    );
  }
}
