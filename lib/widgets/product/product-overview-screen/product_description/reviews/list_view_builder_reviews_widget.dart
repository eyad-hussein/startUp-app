import 'package:app/models/review_model.dart';
import 'package:flutter/material.dart';

class ListViewReviews extends StatelessWidget {
  final List<ReviewModel> reviews;
  const ListViewReviews({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        return const Placeholder();
      },
    );
  }
}
