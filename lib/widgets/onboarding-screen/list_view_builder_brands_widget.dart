import 'package:app/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'custom_brand_card_widget.dart';
import 'package:get/get.dart';

class ListViewBrands extends StatelessWidget {
  const ListViewBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.find<ProductController>();
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: productController.brands.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 : 10),
          child: CustomBrandCard(
            text: productController.brands[index].name,
            image: productController.brands[index].image,
          ),
        );
      },
    );
  }
}
