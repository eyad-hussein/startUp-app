import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../models/product.dart';
import '../../routes.dart';

class CustomProductCard extends StatefulWidget {
  final Product product;

  const CustomProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<CustomProductCard> createState() => _CustomProductCardState();
}

class _CustomProductCardState extends State<CustomProductCard> {
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
      onTap: () => Get.toNamed(
        Routes.productScreenRoute,
        arguments: widget.product,
      ),
      child: Container(
        width: getWidth(160),
        height: getHeight(257),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.product.imageUrl,
                    width: getWidth(160),
                    height: getHeight(203),
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getHeight(15),
                    left: getWidth(128),
                  ),
                  child: GestureDetector(
                    child: widget.product.isFavourite
                        ? SvgPicture.asset('assets/icons/heart.svg')
                        : SvgPicture.asset(
                            'assets/icons/heart.svg',
                            color: Colors.red,
                          ),
                    onTap: () {
                      setState(() {
                        widget.product.isFavourite =
                            !widget.product.isFavourite;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(5),
              ),
              child: Text(
                widget.product.name,
                style: const TextStyle(
                  color: Color(0xFF1D1E20),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  fontSize: 11,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(1),
              ),
              child: Text(
                "LE ${widget.product.price}",
                style: const TextStyle(
                  color: Color(0xFF1D1E20),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
