import 'package:app/widgets/text-search-screen/text_search_image_item_widget.dart';
import 'package:flutter/material.dart';

import 'package:app/controllers/text_search_controller.dart';
import 'package:get/get.dart';

import 'package:app/shared/ui/ui_helpers.dart';

class TextSearchSimilarImages extends StatelessWidget {
  TextSearchSimilarImages({super.key});

  final TextSearchController _textSearchController =
      Get.find<TextSearchController>();

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
        Padding(
          padding: const EdgeInsets.only(left: kHorizontalSpaceMedium),
          child: Text(
            'Please Choose closest image',
            style: kTitleInter.copyWith(
                height: 0, fontSize: 16, letterSpacing: 0.05),
          ),
        ),
        const SizedBox(
          height: kVerticalSpaceMedium,
        ),
        //Check if I have urls
        _textSearchController.urlsAvailable.value
            ? Center(
                child: SizedBox(
                  height: getHeight(190),
                  width: getWidth(345),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 32,
                    ),
                    itemCount: _textSearchController.urls.length.isOdd
                        ? _textSearchController.urls.length - 1
                        : _textSearchController.urls.length,
                    itemBuilder: (BuildContext context, int index) {
                      return TextSearchImageItem(
                          url: _textSearchController.urls[index]);
                    },
                  ),
                ),
              )
            : const SizedBox(),
        // Check for odd count as I want to add the last one seperatly to make it centered
        _textSearchController.urls.length.isOdd
            ? Column(
                children: [
                  const SizedBox(
                    height: kVerticalSpaceMedium,
                  ),
                  Center(
                    child: TextSearchImageItem(
                        url: _textSearchController.urls.last),
                  )
                ],
              )
            : const SizedBox(),
        const SizedBox(
          height: kVerticalSpaceMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(left: kHorizontalSpaceMedium),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Not Close Enough? ',
                  style: kTitleInter.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 0.05),
                ),
                TextSpan(
                  text: 'Try Styleach image search',
                  style: kTitleInter.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 0.05),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
