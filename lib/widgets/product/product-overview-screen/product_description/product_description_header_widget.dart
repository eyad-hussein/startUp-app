import 'package:flutter/material.dart';
import 'package:app/models/product_model.dart';

class ProductDescriptionHeader extends StatelessWidget {
  final ProductModel product;
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  const ProductDescriptionHeader(
      {super.key,
      required this.product,
      required this.getHeight,
      required this.getWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getWidth(250),
              child: Text(
                product.shortDescription,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xFF8F959E),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: getWidth(18),
              ),
              child: const Text(
                "Price",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xFF8F959E),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Color(0xFF1D1E20)),
              ),
              Text(
                "LE ${product.price}",
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color(0xFF1D1E20),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
