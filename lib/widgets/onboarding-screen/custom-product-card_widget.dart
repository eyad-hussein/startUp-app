import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product.dart';

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

    return SizedBox(
      width: getWidth(160.0),
      height: getHeight(257.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  widget.product.imageUrl,
                  width: getWidth(160.0),
                  height: getHeight(203.0),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(10.0),
                  left: getWidth(120.0),
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
                      widget.product.isFavourite = !widget.product.isFavourite;
                    });
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(5.0),
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
              top: getHeight(1.0),
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
    );
  }
}
