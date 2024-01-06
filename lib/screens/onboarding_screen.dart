import 'package:app/widgets/onboarding-screen/custom-appbar-widget.dart';
import 'package:app/widgets/onboarding-screen/custom-search-bar-widget.dart';
import 'package:app/widgets/onboarding-screen/custom_bottom_navigator_bar_widget.dart';
import 'package:app/widgets/onboarding-screen/custom-product-card_widget.dart';
import 'package:app/widgets/onboarding-screen/list_view_builder_brands_widget.dart';
import 'package:app/widgets/onboarding-screen/list_view_builder_products_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../models/brand.dart';
import '../models/product.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Brand> BrandList = [
      Brand(
          name: 'Adidas',
          icon: SvgPicture.asset('assets/icons/adidas-logo.svg')),
      Brand(name: 'Nike', icon: SvgPicture.asset('assets/icons/nike-logo.svg')),
      Brand(name: 'Puma', icon: SvgPicture.asset('assets/icons/puma-logo.svg')),
      Brand(name: 'Fila', icon: SvgPicture.asset('assets/icons/fila-logo.svg')),
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
      bottomNavigationBar:  const CustomBottomNavigatorBar(),
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
              const CustomAppbar(),
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
                child: const Text("Welcome to Styleach.",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8F959E)
                  ),
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
                        color: Color(0xFF1D1E20)
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
                    brands: BrandList,
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
                  height: getHeight(343),
                  child: ListViewProducts(products: dummyProducts)),
            ],
          ),
        ),
      ),
    );
  }
}
