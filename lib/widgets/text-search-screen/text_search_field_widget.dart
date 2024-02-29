import 'package:flutter/material.dart';
import 'package:app/shared/ui/ui_helpers.dart';

class TextSearchFieldWidget extends StatelessWidget {
  const TextSearchFieldWidget({super.key});

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
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: kVerticalSpaceMedium, bottom: kVerticalSpaceSmall),
          child: Center(
            child: Text(
              'Styleach Generative Image Search',
              style: kTitleInter.copyWith(
                  height: 0, fontSize: 20, letterSpacing: 0),
            ),
          ),
        ),
        Center(
          child: Container(
            height: getHeight(60),
            width: getWidth(342),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: getWidth(250),
                        child: TextFormField(
                          style: kTitleInter.copyWith(
                              fontSize: 15, letterSpacing: 0),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: kHorizontalSpaceSmall),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: getWidth(85),
                          height: getHeight(40),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Generate",
                              style: kBodyLarge.copyWith(
                                  color: Colors.white,
                                  height: 0,
                                  letterSpacing: 0.01),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
