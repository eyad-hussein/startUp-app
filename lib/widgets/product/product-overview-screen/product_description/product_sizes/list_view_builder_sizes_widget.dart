import 'package:app/models/size_model.dart';
import 'package:flutter/material.dart';

class ListViewSizes extends StatelessWidget {
  final List<SizeModel> sizesAvailable;
  const ListViewSizes({
    super.key,
    required this.sizesAvailable,
  });

  bool _checkAvailability(List<String> allSizes, String size) {
    return allSizes.contains(size);
  }

  @override
  Widget build(BuildContext context) {
    List<String> sizesStringList =
        SizeType.values.map((e) => e.toString().split('.').last).toList();

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
                color: _checkAvailability(sizesStringList,
                        sizesAvailable[index].size.toLowerCase())
                    ? const Color(0xFFE5E5E5)
                    : const Color(0xFFE5E5E5).withOpacity(0.5)),
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
