import 'package:flutter/material.dart';
import 'package:app/widgets/order-confirmed-screen/order_confirm_bottom_navigation_bar.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).colorScheme.primary),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Center(
              child: Image.asset(
                'assets/images/phone.png',
                width: 1000,
                height: 300,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Order Confirmed!",
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.displayMedium!.fontSize!,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Text(
              "Your order has been confirmed, we will send you a confirmation email shortly.",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.displaySmall!.fontSize!,
                color: Theme.of(context).colorScheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 85),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30, 20, 0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: const Color(0xF5F5F5F5),
                foregroundColor: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0,
              ),
              child: Text(
                "Go to Orders",
                style: TextStyle(
                  fontSize:
                      Theme.of(context).textTheme.displaySmall!.fontSize! * 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Spacer(),
          const OrderConfirmBottomNavigationBar(),
        ],
      ),
    );
  }
}
