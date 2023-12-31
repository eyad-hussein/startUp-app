import 'package:app/widgets/onboarding-screen-widgets/bottom_navigator_bar.dart';
import 'package:app/widgets/onboarding-screen-widgets/custom-product-card.dart';
import 'package:app/widgets/onboarding-screen-widgets/list_view_builder_brands.dart';
import 'package:app/widgets/onboarding-screen-widgets/list_view_builder_products.dart';
import 'package:flutter/material.dart';

import '../models/brand.dart';
import '../models/product.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Brand> dummyBrandList = [
      Brand(name: 'Adidas', icon: Icons.favorite),
      Brand(name: 'Nike', icon: Icons.star),
      Brand(name: 'Puma', icon: Icons.sports_soccer),
      Brand(name: 'Reebok', icon: Icons.directions_run),
      Brand(name: 'Under', icon: Icons.accessibility),
    ];
    List<Product> dummyProducts = List.generate(7, (index) {
      return Product(
        imageURL:
            'https://teeshoppen.co.uk/cdn/shop/products/12224235_1800x1800.png?v=1663763153',
        name: 'Product ${index + 1}',
        price: (index + 1) * 10.0,
        isFavourite: index % 3 == 0,
      );
    });
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return Scaffold(
      bottomNavigationBar: Container(
        height: getHeight(80),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: [
              Colors.black.withOpacity(0.75),
              Colors.black.withOpacity(1.0),
            ],
          ),
        ),
        child: const CustomBottomNavigatorBar(),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: getHeight(45),
          bottom: getHeight(20),
          left: getWidth(20),
          right: getWidth(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 45 / 375,
                    height: MediaQuery.of(context).size.width * 45 / 375,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF5F6FA),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: getWidth(45),
                    height: getHeight(45),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF5F6FA),
                    ),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
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
              child: const Text("Welcome to Styleach."),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: getWidth(274),
                    height: getHeight(60),
                    padding: EdgeInsets.only(
                      left: getWidth(15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: getWidth(20),
                        ),
                        SizedBox(width: getWidth(10)),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search...',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(10),
                    ),
                    child: Container(
                      width: getWidth(50),
                      height: getHeight(60),
                      padding: EdgeInsets.only(
                        left: getWidth(12),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        gradient: RadialGradient(
                          center: Alignment.topLeft,
                          radius: 1.0,
                          colors: [
                            Colors.black.withOpacity(0.75),
                            Colors.black.withOpacity(1.0),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: getWidth(26),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(15),
              ),
              child: SizedBox(
                height: getHeight(50),
                width: double.infinity,
                child: ListViewBrands(
                  brands: dummyBrandList,
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
            SizedBox(
                height: getHeight(300),
                child: ListViewProducts(products: dummyProducts)),
          ],
        ),
      ),
    );
  }
}
