import 'package:flutter/material.dart';
import '../../models/brand.dart';
import 'custom_brand_card_widget.dart';

class ListViewBrands extends StatelessWidget {
  final List<Brand> brands;
  const ListViewBrands({
    super.key,
    required this.brands,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: brands.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 : 10),
          child: CustomBrandCard(
            text: brands[index].name,
            icon: brands[index].icon,
          ),
        );
      },
    );
  }
}
