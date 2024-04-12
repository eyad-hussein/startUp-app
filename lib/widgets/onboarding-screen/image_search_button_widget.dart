import 'package:app/controllers/product_controller.dart';
import 'package:app/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:app/controllers/image_search_controller.dart';

class ImageSearchButton extends StatelessWidget {
  final ImageSource source;
  ImageSearchButton({super.key, required this.source});
  final ImageSearchController _imageSearchController =
      Get.find<ImageSearchController>();
  final ProductController _productController = Get.find<ProductController>();
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

    return GestureDetector(
      onTap: () async {
        try {
          await _imageSearchController.getSimilarProducts(source);
        } catch (e) {
          print(e);
        }

        Get.toNamed(Routes.onBoardingScreenRoute);
      },
      child: Container(
        width: getWidth(50),
        height: getHeight(50),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/camera.svg'),
          ],
        ),
      ),
    );
  }
}
