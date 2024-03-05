import 'package:app/controllers/image_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    final ImageSearchController _imageSearchController = Get.find<ImageSearchController>();
      return SizedBox(
        width: getWidth(153),
        height: getHeight(187),
        child: GestureDetector(
          onTap: () => _imageSearchController.getSimilarProductsFromUrl(url),
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
