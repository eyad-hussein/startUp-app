import 'package:app/models/product_model.dart';
import 'package:app/widgets/product/product-overview-screen/product_image_widget.dart';
import 'package:app/widgets/shared/extended_appbar_widget.dart';
import 'package:app/widgets/product/product-overview-screen/list_view_builder_sizes_widget.dart';
import 'package:app/widgets/product/product-overview-screen/list_view_builder_subimages_widget.dart';
import 'package:app/widgets/product/product-overview-screen/review_stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../widgets/product/product-overview-screen/product_description_text_widget.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

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

    final product = Get.arguments as ProductModel;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              ProductImage(image: product.image.url, height: getHeight(387)),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(45),
                  left: getWidth(20),
                  right: getWidth(20),
                ),
                child: const ExtendedAppbar(
                  type: ExtendedAppbarType.product,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(20),
              top: getHeight(15),
              right: getWidth(22),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.shortDescription,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xFF8F959E),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: getWidth(18),
                      ),
                      child: const Text(
                        "Price",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xFF8F959E),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getHeight(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Color(0xFF1D1E20)),
                      ),
                      Text(
                        "LE ${product.price}",
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Color(0xFF1D1E20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(20),
              top: getHeight(21),
              right: getWidth(20),
            ),
            child: SizedBox(
              height: getHeight(77),
              width: getWidth(335),
              child: ListViewSubImages(
                subImages: product.subImages,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(16),
            ),
            child: SizedBox(
              height: getHeight(89),
              width: getWidth(335),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Size",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Color(0xFF1D1E20),
                        ),
                      ),
                      Text(
                        "Size Guide",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xFF8F959E),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(10),
                    ),
                    child: SizedBox(
                      width: getWidth(335),
                      height: getHeight(54),
                      child: ListViewSizes(
                        sizesAvailable: product.sizesAvailable,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(20),
              top: getHeight(20),
              right: getWidth(20),
            ),
            child: SizedBox(
              width: getWidth(335),
              height: getHeight(125),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(10),
                    ),
                    //this should be handled better in the CustomProductDescription
                    child: CustomProductDescription(
                        description: product.description),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(10),
              left: getWidth(20),
              right: getWidth(20),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reviews",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color(0xFF1D1E20),
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xFF8F959E),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getHeight(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: getHeight(45),
                        height: getHeight(45),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFCCD9E0),
                        ),
                        //Add Image for the rev photo here
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getWidth(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Ronald Richards',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Color(0xFF1D1E20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getHeight(5),
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/clock.svg'),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getWidth(5),
                                          ),
                                          //here should be the date text
                                          child: const Text(
                                            "13 Sep, 2020",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11,
                                              color: Color(0xFF8F959E),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "3.5",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Color(0xFF1D1E20),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getWidth(5),
                                      ),
                                      child: const Text(
                                        "Rating",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: Color(0xFF8F959E),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getHeight(5),
                                  ),
                                  child: StarReviewWidget(review: 3.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(10),
                      right: getWidth(20),
                    ),
                    //Should be renamed CustomDescription we 5alas
                    child: CustomProductDescription(
                      description:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae asdas asd asd  amdet...",
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(15),
            ),
            child: Container(
              height: getHeight(39),
              width: getWidth(335),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xFF1D1E20),
                        ),
                      ),
                      Text(
                        "with VAT,SD",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xFF8F959E),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "125\$",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Color(0xFF1D1E20),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(20),
            ),
            child: Container(
              height: getHeight(75),
              decoration: const BoxDecoration(
                color: Color(0xFF9775FA),
              ),
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    color: Color(0xFFFEFEFE),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
