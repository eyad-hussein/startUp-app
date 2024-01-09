import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

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
      children: [
        Container(
          width: getWidth(274),
          height: getHeight(60),
          padding: EdgeInsets.only(
            left: getWidth(15),
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F6FA),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xFFF5F6FA),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/search.svg'),
              SizedBox(width: getWidth(10)),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search...',
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getWidth(10),
          ),
          child: Container(
            width: getWidth(50),
            height: getHeight(60),
            padding: EdgeInsets.only(
              left: getWidth(12),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
              gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 1.0,
                colors: [
                  Colors.black.withOpacity(0.75),
                  Colors.black.withOpacity(1.0),
                ],
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/camera.svg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
