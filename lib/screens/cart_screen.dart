import 'package:app/widgets/cart-screen/cart_product_card_widget.dart';
import 'package:app/widgets/cart-screen/personal_information_viewer_widget.dart';
import 'package:app/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String dummytext =
    "12, Court Street, Second District New Borg El-Arab City";

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: getHeight(45),
            left: getWidth(20),
            right: getWidth(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: getHeight(45),
                    height: getHeight(45),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF5F6FA),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getHeight(10),
                      ),
                      child: SvgPicture.asset('assets/icons/arrow-left.svg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(109),
                    ),
                    child: const Text(
                      'Cart',
                      style: TextStyle(
                        color: Color(0xFF1D1E20),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: getHeight(25)),
                child: CartProductCard(
                    height: getHeight(120), width: getWidth(335)),
              ),
              Padding(
                padding: EdgeInsets.only(top: getHeight(20)),
                child: CartProductCard(
                    height: getHeight(120), width: getWidth(335)),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(20),
                ),
                child: const PersonalInformationViewer(
                    text: dummytext,
                    assetPath: 'assets/icons/map.svg',
                    title: 'Delivery Address'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(20),
                ),
                child: const PersonalInformationViewer(
                    text: dummytext,
                    assetPath: 'assets/icons/map.svg',
                    title: 'Payment Method'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(20),
                ),
                child: Container(
                  width: getWidth(336),
                  height: getHeight(131),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Order Info',
                        style: TextStyle(
                          color: Color(0xFF1D1E20),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
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
                              'Subtotal',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                                color: Color(0xFF8F959E),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'LE 1200',
                              style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getHeight(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Charge',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                                color: Color(0xFF8F959E),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'LE 50',
                              style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
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
                              'Total',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                                color: Color(0xFF8F959E),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'LE 1250',
                              style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
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
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavBar(height: getHeight(80), text: 'Checkout'),
    );
  }
}
