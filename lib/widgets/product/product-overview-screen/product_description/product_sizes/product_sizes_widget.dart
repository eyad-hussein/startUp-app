import 'package:app/models/size_model.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/product_sizes/list_view_builder_sizes_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/models/product_model.dart';

class ProductSizes extends StatelessWidget {
  final List<SizeModel> sizesAvailable;
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  const ProductSizes({
    super.key,
    required this.sizesAvailable,
    required this.getHeight,
    required this.getWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Size",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color(0xFF1D1E20),
              ),
            ),
            Text(
              "Size Guide",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(0xFF8F959E),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(10),
          ),
          child: SizedBox(
            width: getWidth(335),
            height: getHeight(54),
            child: ListViewSizes(
              sizesAvailable: sizesAvailable,
            ),
          ),
        ),
      ],
    );
  }
}
