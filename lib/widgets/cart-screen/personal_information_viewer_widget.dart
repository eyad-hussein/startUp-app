import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalInformationViewer extends StatelessWidget {
  final String title;
  final String text;
  final String assetPath;

  const PersonalInformationViewer(
      {super.key,
      required this.text,
      required this.assetPath,
      required this.title});

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
      height: getHeight(84),
      width: getWidth(335),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color(0xFF1D1E20),
                ),
              ),
              SizedBox(
                height: getHeight(15),
                width: getWidth(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/arrow-left-small.svg',
                      color: const Color(0xFF1D1E20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                assetPath,
                width: getWidth(50),
                height: getHeight(50),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(15),
                  top: getHeight(9),
                ),
                child: SizedBox(
                  width: getWidth(230),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Color(0xFF8F959E),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(15),
                ),
                child: SvgPicture.asset('assets/icons/check-green.svg'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
