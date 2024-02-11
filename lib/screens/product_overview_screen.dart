import 'package:app/models/product_model.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/product_description_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/total_price_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

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

    final product = Get.arguments as ProductModel;
    print(product.id);
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () async {},
        child: const MainBottomNavigationBar(content: "Add To Cart"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: verticalSpaceLarge),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductDescription(
                    product: product,
                    getHeight: getHeight,
                    getWidth: getWidth,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: horizontalSpaceRegular,
                vertical: verticalSpaceSmall,
              ),
              child: TotalPrice(getHeight: getHeight, getWidth: getWidth),
            ),
          ),
        ],
      ),
    );
  }
}
