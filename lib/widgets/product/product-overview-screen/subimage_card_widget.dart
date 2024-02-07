import 'package:flutter/material.dart';

class SubImageCard extends StatelessWidget {
  final String ImageURL;

  const SubImageCard({
    Key? key,
    required this.ImageURL,
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

    return SizedBox(
      width: getWidth(77),
      height: getWidth(77),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Image.network(
          ImageURL,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
