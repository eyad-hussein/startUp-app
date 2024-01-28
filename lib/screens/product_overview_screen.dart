import 'package:app/models/product.dart';
import 'package:app/widgets/custom_appbar_widget.dart';
import 'package:app/widgets/product-overview-screen/list_view_builder_sizes_widget.dart';
import 'package:app/widgets/product-overview-screen/list_view_builder_subimages_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/product-overview-screen/product_description_text_widget.dart';

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

    final product = Get.arguments as Product;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: getHeight(387),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getHeight(45),
                    left: getWidth(20),
                    right: getWidth(20),
                  ),
                  child: const CustomAppbar(
                    type: CustomAppbarType.PRODUCT,
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
                      const Text(
                        "Men's Printed Pullover Hoodie",
                        style: TextStyle(
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
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: getWidth(20),
            //     top: getHeight(21),
            //     right: getWidth(20),
            //   ),
            //   child: SizedBox(
            //     height: getHeight(77),
            //     width: getWidth(335),
            //     child: ListViewSubImages(
            //       SubImagesUrl: product.subImagesUrl,
            //     ),
            //   ),
            // ),
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
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     top: getHeight(10),
                    //   ),
                    //   child: SizedBox(
                    //       width: getWidth(335),
                    //       height: getHeight(54),
                    //       child: ListViewSizes(
                    //         sizesAvailable: product.sizesAvailable,
                    //       )),
                    // ),
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
              child: Container(
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
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     top: getHeight(10),
                    //   ),
                    //   //this should be handled better in the CustomProductDescription
                    //   child: CustomProductDescription(
                    //       description: product.description),
                    // ),
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
              child: const Column(
                children: [
                  Row(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
