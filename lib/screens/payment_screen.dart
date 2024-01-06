import 'package:flutter/material.dart';
import 'package:app/widgets/payment-screen/payment_screen_bar_widget.dart';
import 'package:app/widgets/payment-screen/payment_bottom_navigation_bar_widget.dart';
import 'package:app/widgets/payment-screen/payment_card_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

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
      appBar: PaymentScreenBar(
        onBackPress: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: PaymentBottomNavigationBar(),
      body: Padding(
        padding: EdgeInsets.only(
          top: getHeight(45),
          bottom: getHeight(20),
          left: getWidth(20),
          right: getWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header section
              Padding(
                padding: EdgeInsets.only(top: getHeight(20)),
                child: const Row(
                  children: [
                    Text(
                      '12:34', // Replace with actual time
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        height: 19.0 / 16.0,
                        letterSpacing: -0.0075,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Add', // Change for actual screen title
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        height: 19.0 / 16.0,
                        letterSpacing: -0.0075,
                      ),
                    ),
                  ],
                ),
              ),
              // Card information section
              PaymentCard(),
            ],
          ),
        ),
      ),
    );
  }
}
