import 'package:flutter/material.dart';
import 'package:app/widgets/payment-screen/payment_screen_bar_widget.dart';
import 'package:app/widgets/payment-screen/payment_screen_widget.dart';
import 'package:app/widgets/payment-screen/payment_bottom_navigation_bar_widget.dart';

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
        child: PaymentCard(
          cardsData: [
            {'cardNumber': '1234********', 'cardHolderName': 'Ali'},
            {'cardNumber': '5678********', 'cardHolderName': 'Ahmed'},
          ],
        ),
      ),
    );
  }
}