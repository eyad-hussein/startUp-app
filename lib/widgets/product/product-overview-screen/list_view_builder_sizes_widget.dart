import 'package:app/models/size_model.dart';
import 'package:flutter/material.dart';
import '../../../models/brand_model.dart';
import 'subimage_card_widget.dart';

class ListViewSizes extends StatelessWidget {
  final List<SizeModel> sizesAvailable;
  const ListViewSizes({
    super.key,
    required this.sizesAvailable,
  });

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

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sizesAvailable.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: index == 0 ? 0 : getWidth(9),
          ),
          child: Container(
            height: getHeight(60),
            width: getWidth(60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF5F6FA),
            ),
            child: Center(
              child: Text(
                sizesAvailable[index].size,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
