import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app/models/product_model.dart';
import 'package:app/controllers/cart_controller.dart';

class CardProductInfo extends StatelessWidget {
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  final ProductModel product;
  final CartController controller;

  const CardProductInfo({
    super.key,
    required this.product,
    required this.getHeight,
    required this.getWidth,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${product.shortDescription}\n${product.name}",
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Color(0xFF1D1E20),
          ),
        ),
        Text(
          "LE ${product.price.toString()}",
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 11,
            color: Color(0xFF8F959E),
          ),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHeight(25),
                  ),
                  border: Border.all(
                    color: const Color(0xFFDEDEDE),
                  )),
              height: getHeight(25),
              width: getWidth(25),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/arrow-down.svg',
                    color: const Color(0xFF8F959E),
                  ),
                ),
              ),
            ),
            const Text(
              '1',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                fontFamily: 'Inter',
                color: Color(0xFF1D1E20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHeight(25),
                  ),
                  border: Border.all(
                    color: const Color(0xFFDEDEDE),
                  )),
              height: getHeight(25),
              width: getWidth(25),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/arrow-up.svg',
                    color: const Color(0xFF8F959E),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHeight(25),
                  ),
                  border: Border.all(
                    color: const Color(0xFFDEDEDE),
                  )),
              height: getHeight(25),
              width: getWidth(25),
              child: InkWell(
                onTap: () {
                  controller.removeFromCart(product);
                },
                borderRadius: BorderRadius.circular(25),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/trash.svg',
                    color: const Color(0xFF8F959E),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
