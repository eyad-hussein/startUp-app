import 'package:flutter/material.dart';

class CartProductImage extends StatelessWidget {
  final double width;
  final double height;
  final String url;
  const CartProductImage(
      {super.key,
      required this.width,
      required this.height,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
