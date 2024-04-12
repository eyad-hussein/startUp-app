import 'package:app/widgets/text-search-screen/text_search_field_widget.dart';
import 'package:app/widgets/text-search-screen/text_search_similar_images_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/controllers/text_search_controller.dart';
import 'package:get/get.dart';

class TextSearchScreen extends StatelessWidget {
  const TextSearchScreen({super.key});

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

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(10),
            vertical: getHeight(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/close.svg',
                      height: 16,
                      width: 16,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const SizedBox(
                    width: kHorizontalSpaceSmall,
                  ),
                  const Expanded(child: SizedBox()),
                  SvgPicture.asset(
                    'assets/logos/styleach-logo.svg',
                  ),
                  const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  ),
                ],
              ),
              const TextSearchFieldWidget(),
              const SizedBox(
                height: kVerticalSpaceSmall,
              ),
              Visibility(
                visible: _textSearchController.urlsAvailable.value,
                child: TextSearchSimilarImages(),
              ),
            ],
          ),
        ));
  }
}
