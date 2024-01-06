import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'custom-product-card_widget.dart';

class ListViewProducts extends StatelessWidget {
  final List<Product> products;

  const ListViewProducts({Key? key, required this.products}) : super(key: key);

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

    return ListView.builder(
      itemCount: (products.length / 2).ceil(),
      itemBuilder: (context, index) {
        int startIndex = index * 2;
        int endIndex = startIndex + 2;
        endIndex = endIndex > products.length ? products.length : endIndex;
        return Column(
          children: [
            if (index > 0) SizedBox(height: getHeight(10)),
            Row(
              children: products.sublist(startIndex, endIndex).asMap().entries.map((entry) {
                int indexWithinSublist = entry.key;
                Product product = entry.value;

                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: indexWithinSublist % 2 == 1 ? getWidth(7.5) : 0,
                    right: indexWithinSublist % 2 == 0 ? getWidth(7.5) : 0),
                    child: CustomProductCard(product: product),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
