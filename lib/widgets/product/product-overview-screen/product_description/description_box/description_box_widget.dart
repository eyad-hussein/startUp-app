import 'package:app/widgets/product/product-overview-screen/product_description/description_box/description_box_content_widget.dart';
import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  final String description;
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  const DescriptionBox({
    super.key,
    required this.description,
    required this.getHeight,
    required this.getWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            fontFamily: 'Inter',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(10),
          ),
          //this should be handled better in the CustomProductDescription
          child: DescriptionBoxContent(
            description: description,
          ),
        ),
      ],
    );
  }
}
