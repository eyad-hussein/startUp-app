import 'package:app/widgets/product/products/custom_category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/mock/category_mock.dart';

List<CategoryMock> categoriesMock = [
  CategoryMock("Featured"),
  CategoryMock("Popular"),
  CategoryMock("New"),
  CategoryMock("Trending"),
  CategoryMock("Best Seller"),
  CategoryMock("Top Rated"),
];

class ListViewBuilderCategories extends StatelessWidget {
  const ListViewBuilderCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoriesMock.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 : 10),
          child: CustomCategoryCard(
            text: categoriesMock[index].name ?? '',
            // image: productController.brands[index].image,
          ),
        );
      },
    );
  }
}
