import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: getHeight(45),
            height: getHeight(45),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF5F6FA),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getHeight(10),
              ),
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: getHeight(45),
            height: getHeight(45),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF5F6FA),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getHeight(10),
              ),
              child: SvgPicture.asset(
                'assets/icons/bag.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
