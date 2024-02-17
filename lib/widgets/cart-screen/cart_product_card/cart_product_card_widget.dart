import 'package:app/models/product_model.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/cart-screen/cart_product_card/cart_product_image_widget.dart';
import 'package:app/widgets/cart-screen/cart_product_card/cart_product_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/controllers/cart_controller.dart';

class CartProductCard extends StatelessWidget {
  final ProductModel product;
  final CartController controller;

  const CartProductCard({
    super.key,
    required this.product,
    required this.controller,
  });

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

    return Material(
      elevation: kElevationLarge,
      shadowColor: kShadowColorGreyLight,
      borderRadius: BorderRadius.circular(kBorderRadiusSmall),
      child: Container(
        padding: const EdgeInsets.only(left: kHorizontalSpaceSmall),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadiusSmall),
          color: Theme.of(context).colorScheme.background,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CartProductImage(
              width: getWidth(100),
              height: getHeight(100),
              url: product.image.url,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: kHorizontalSpaceSmall,
              ),
              child: CardProductInfo(
                getHeight: getHeight,
                getWidth: getWidth,
                product: product,
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
