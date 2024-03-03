import 'package:app/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:get/get.dart';

class PickSearchTypePanel extends StatelessWidget {
  const PickSearchTypePanel({super.key});

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: kVerticalSpaceRegular,
            left: kHorizontalSpaceMedium,
            bottom: kVerticalSpaceMedium,
          ),
          child: Text("Search Via...", style: kTitleBebasNeue),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: kHorizontalSpaceMedium,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: ()=>Get.offNamed(Routes.textSearchScreen),
                child: Container(
                  width: getWidth(156),
                  height: getHeight(65),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "Text Search",
                      style: kBodyLarge.copyWith(
                          color: Colors.white,
                          height: 0,
                          letterSpacing: 0.01),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: kHorizontalSpaceTiny,
                  right: kHorizontalSpaceTiny,
                ),
                child: Text(
                  'Or',
                  style: kBodyLarge.copyWith(
                    fontSize: 32,
                    color: Colors.black,
                    height: 0,
                    letterSpacing: 0.01,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: getWidth(156),
                  height: getHeight(65),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                  child: Center(
                      child: SvgPicture.asset('assets/icons/camera.svg')
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
