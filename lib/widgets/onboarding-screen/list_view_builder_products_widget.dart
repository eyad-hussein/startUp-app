import 'package:app/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'custom_product_card_widget.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = ProductController();

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: 20, // Add horizontal spacing between grid items
        mainAxisSpacing: 8.0,
      ),
      itemCount: productController.products.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomProductCard(product: productController.products[index]);
      },
    );
  }
}
