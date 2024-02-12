import 'package:app/controllers/cart_controller.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/cart-screen/cart_items_widget.dart';
import 'package:app/widgets/cart-screen/cart_product_card/cart_product_card_widget.dart';
import 'package:app/widgets/cart-screen/personal_information_viewer_widget.dart';
import 'package:app/widgets/shared/main_app_bar_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:app/widgets/shared/title_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

const String dummytext =
    "12, Court Street, Second District New Borg El-Arab City";

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final CartController cartController = Get.find<CartController>();

    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(content: "Checkout"),
      appBar: const TitleAppBar(title: 'Cart'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceRegular),
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(
                minHeight: getHeight(120),
                maxHeight: getHeight(240),
              ),
              child: CartItems(
                controller: cartController,
              ),
            ),
            const PersonalInformationViewer(
                text: dummytext,
                assetPath: 'assets/icons/map.svg',
                title: 'Delivery Address'),
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
              child: SizedBox(
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
    );
  }
}
