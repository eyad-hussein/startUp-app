import 'package:app/models/brand_model.dart';
import 'package:app/models/product_model.dart';
import 'package:app/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import '../../controllers/image_search_controller.dart';

class ImageSearchButton extends StatelessWidget {
  final ImageSource source;
  ImageSearchButton({super.key, required this.source});
  final ImageSearchController imageSearchController =
      Get.find<ImageSearchController>();
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
        List<ProductModel> products =
            await imageSearchController.getSimilarProducts(source);
        List<BrandModel> brands = imageSearchController.getBrands(products);
        if (products.isEmpty) {
          return;
        }
        Get.toNamed(
          Routes.onBoardingScreenRoute,
          arguments: {"products": products, "brands": brands},
        );
      },
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
    );
  }
}
