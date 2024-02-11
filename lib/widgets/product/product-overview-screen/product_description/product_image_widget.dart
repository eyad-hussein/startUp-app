import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;
  final double height;
  const ProductImage({super.key, required this.image, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Image.network(
        image,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
