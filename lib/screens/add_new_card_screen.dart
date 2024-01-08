import 'package:flutter/material.dart';
import 'package:app/widgets/add-new-card-screen/add_new_card_bar_widget.dart';

import '../widgets/add-new-card-screen/add-new-card-bottom-navigation-bar.dart';

class AddNewCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddNewCardBar(
        onBackPress: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogoButton(
                  logo: Icons.credit_card,
                  onPressed: () {
                    // Handle button press for credit card
                  },
                ),
                LogoButton(
                  logo: Icons.account_balance_wallet,
                  onPressed: () {
                    // Handle button press for wallet
                  },
                ),
                LogoButton(
                  logo: Icons.payment,
                  onPressed: () {
                    // Handle button press for payment
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Card Owner',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter card owner name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Card Number',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter card number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'EXP',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      width: 150.0,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'MM/YYYY',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      width: 150.0,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter CVV',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: AddNewCardBottomNavigationBar(),
    );
  }
}

class LogoButton extends StatelessWidget {
  final IconData logo;
  final VoidCallback onPressed;

  LogoButton({required this.logo, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(logo, size: 40),
    );
  }
}
