import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key}) : super(key: key);

  double getHeight(BuildContext context, double height) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight * height / 812.0;
  }

  double getWidth(BuildContext context, double width) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth * width / 375.0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getHeight(context, 20)),
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(getWidth(context, 15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.credit_card, size: 24.0),
                  SizedBox(width: getWidth(context, 10)),
                  const Text(
                    'VISA E',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
