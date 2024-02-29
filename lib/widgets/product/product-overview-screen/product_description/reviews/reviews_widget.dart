import 'package:flutter/material.dart';
import 'package:app/models/review_model.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/reviews/review_widget.dart';

class Reviews extends StatelessWidget {
  final List<ReviewModel> reviews;
  final double Function(double) getHeight;
  final double Function(double) getWidth;
  const Reviews(
      {super.key,
      required this.reviews,
      required this.getHeight,
      required this.getWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reviews",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color(0xFF1D1E20),
              ),
            ),
            Text(
              "View all",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF8F959E),
              ),
            ),
          ],
        ),
        SizedBox(
          height: getHeight(150),
          child: ListView.builder(
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              return Review(
                review: reviews[index],
                getHeight: getHeight,
                getWidth: getWidth,
              );
            },
          ),
        ),
      ],
    );
  }
}
