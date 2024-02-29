import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:app/shared/routes.dart';

enum ExtendedAppbarType { onboarding, product }

class ExtendedAppbar extends StatelessWidget {
  const ExtendedAppbar({super.key, required this.type});
  final ExtendedAppbarType type;

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

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            print(type);
            Get.back();
          },
          child: Container(
            width: getHeight(45),
            height: getHeight(45),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF5F6FA),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getHeight(10),
              ),
              child: SvgPicture.asset(
                type == ExtendedAppbarType.product
                    ? 'assets/icons/arrow-left.svg'
                    : 'assets/icons/menu.svg',
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.cartScreenRoute);
          },
          child: Container(
            width: getHeight(45),
            height: getHeight(45),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF5F6FA),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getHeight(10),
              ),
              child: SvgPicture.asset(
                'assets/icons/bag.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
