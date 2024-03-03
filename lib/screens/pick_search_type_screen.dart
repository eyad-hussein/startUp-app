import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/pick-search-type-screen/pick-search-type-panel.dart';

class PickSearchTypeScreen extends StatelessWidget {
  const PickSearchTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double getHeight(double height) {
      return screenHeight * height / 892.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 412.0;
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: kVerticalSpaceLarge,
              bottom: kVerticalSpaceSmall,
            ),
            child: Center(
              child: SvgPicture.asset('assets/icons/styleach-logo.svg'),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/pick-search-type-image.png',
              width: getWidth(363),
              height: getHeight(492),
              fit: BoxFit.cover,
            ),
          ),
          const PickSearchTypePanel(),
        ],
      ),
    );
  }
}
