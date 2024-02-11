import 'package:app/controllers/image_search_controller.dart';
import 'package:app/models/image_model.dart';
import 'package:app/widgets/shared/extended_appbar_widget.dart';
import 'package:app/widgets/onboarding-screen/custom_search_bar_widget.dart';
import 'package:get/get.dart';
import 'package:app/controllers/product_controller.dart';
import 'package:app/widgets/onboarding-screen/custom_bottom_navigator_bar_widget.dart';
import 'package:app/widgets/onboarding-screen/custom_product_card_widget.dart';
import 'package:app/widgets/onboarding-screen/list_view_builder_brands_widget.dart';
import 'package:app/widgets/onboarding-screen/list_view_builder_products_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../models/brand_model.dart';
import '../models/product_model.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    // final Future<List<ProductModel>> products = productController.getProducts();
    // var arguments = Get.arguments;
    // final List<ProductModel> products =
    //     arguments['products'] as List<ProductModel>;
    // final List<BrandModel> brands = arguments['brands'] as List<BrandModel>;

    final List<ProductModel> products = [
      ProductModel(
          id: 1,
          name: "hola",
          image: ImageModel(
            id: 1,
            url:
                "https://storage.googleapis.com/styleach.appspot.com/images/image1/image1.png?GoogleAccessId=firebase-adminsdk-9hieq%40styleach.iam.gserviceaccount.com&Expires=4863009472&Signature=Jwm8s%2FUMyexL1F8XODP4pLbu2l4vgVOSWDDkaTIwjz03rMTFLgEtaU%2Bad2N045eXpMys15yGhVvfLUGF%2FBzu%2FvlnA7cJpgIpwj98yO0DnIcYRcvtHi6nPX%2FlAXtc8dAorcbe8dv8PKrxWSg%2BysAF39s9nz45GV5gugmQpKoyACqi%2FhdugbaDOJ%2BKOPpXzNp4RzXofjwJUffiq1UQAV0uChOLaJ7aq6jjShtRkUBUfNsSXtaK4FOhyPGPoRfpS%2FpTxdqLK2v7KWEC%2BsANeI1%2Ba640dM95Lg6r%2B0ZN1t%2BxWrId7d2a3%2FH8HQsAZtsNBmBZmIPo78yjgbbAN7x5xAHYrA%3D%3D&generation=1706700502245476",
          ),
          subImages: [],
          price: 125,
          description:
              "lorem ipsum dolor sit amet consectetur adipiscing elit ",
          shortDescription: "lorem ipsum dolor sit amet",
          brand: BrandModel(address: "", name: "Nike", id: 1),
          sizesAvailable: [],
          reviews: [])
    ];
    final List<BrandModel> brands = [];
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigatorBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: getHeight(45),
            bottom: getHeight(20),
            left: getWidth(20),
            right: getWidth(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExtendedAppbar(
                type: ExtendedAppbarType.onboarding,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(20),
                ),
                child: const Text(
                  'Ali',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    height: 31.0 / 28.0,
                    letterSpacing: -0.0075,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(5),
                ),
                child: const Text(
                  "Welcome to Styleach.",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8F959E)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(20),
                ),
                child: const CustomSearchBar(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose Brand',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                          height: 31.0 / 28.0,
                          letterSpacing: -0.0075,
                          color: Color(0xFF1D1E20)),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13.0,
                        color: Color(0xFF8F959E),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(15),
                ),
                child: SizedBox(
                  height: getHeight(50),
                  width: double.infinity,
                  child: ListViewBrands(
                    brands: brands,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(15),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrival',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        height: 31.0 / 28.0,
                        letterSpacing: -0.0075,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13.0,
                        color: Color(0xFF8F959E),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: getHeight(343),
                child: ListViewProducts(products: products),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
