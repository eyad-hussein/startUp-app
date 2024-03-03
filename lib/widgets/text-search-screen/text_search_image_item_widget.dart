import 'package:flutter/material.dart';

class TextSearchImageItem extends StatelessWidget {

  const TextSearchImageItem({super.key,required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double getHeight(double height) {
      return screenHeight * height / 892.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 412.0;
    }
      return SizedBox(
        width: getWidth(153),
        height: getHeight(187),
        child: GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              url,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  }
}
