import 'package:app/widgets/onboarding-screen/image_search_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

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
          width: getWidth(250),
          height: getHeight(50),
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
          child: ImageSearchButton(
            source: ImageSource.gallery,
          ),
        ),
      ],
    );
  }
}
