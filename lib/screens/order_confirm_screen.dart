import 'package:flutter/material.dart';
import 'package:app/widgets/order-confirmed-screen/order_confirmed_widget.dart';
import 'package:app/widgets/order-confirmed-screen/order_confirm_bar.dart';
import 'package:app/widgets/order-confirmed-screen/order_confirm_bottom_navigation_bar.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrderConfirmedBar(
        onBackPress: () {
          // Handle back press
        },
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: const OrderConfirmed(
              imagePath: 'assets/images/phone.png',
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Order Confirmed",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Your order has been confirmed, we will send you a confirmation email shortly.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 85), // Increase the height to push the button further down
          ElevatedButton(
            onPressed: () {
              // Handle "Go to orders" button press
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Go to Orders",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          Spacer(), // Use Spacer to push the bottom navigation bar to the bottom
          OrderConfirmBottomNavigationBar(),
        ],
      ),
    );
  }
}
