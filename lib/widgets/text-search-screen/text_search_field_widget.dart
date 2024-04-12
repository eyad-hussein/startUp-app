import 'package:app/controllers/text_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:get/get.dart';

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

    final TextSearchController _textSearchController =
        Get.find<TextSearchController>();

    return Column(
      children: [
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
                          onChanged: (value) {
                            _textSearchController.descriptionController.text =
                                value;
                          },
                          style: kTitleInter.copyWith(
                              fontSize: 15, letterSpacing: 0),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: kHorizontalSpaceSmall),
                            hintText: "Search...",
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _textSearchController.requestSimilarImages();
                          FocusScope.of(context).unfocus();
                        },
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
                                letterSpacing: 0.01,
                              ),
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
