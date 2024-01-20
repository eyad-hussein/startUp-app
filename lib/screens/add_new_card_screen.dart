import 'package:app/widgets/add-new-card-screen/card_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/add-new-card-screen/add_new_card_bar_widget.dart';

import '../widgets/add-new-card-screen/add-new-card-bottom-navigation-bar.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).colorScheme.primary),
        ),
        title: Text(
          "Add New Card",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: Theme.of(context).textTheme.displaySmall!.fontSize! * 1.3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardButton(
                  active: true,
                  iconPath: 'mastercard',
                ),
                CardButton(
                  iconPath: 'paypal',
                ),
                CardButton(
                  iconPath: 'paypal',
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              'Card Owner',
              style: TextStyle(
                fontSize:
                    Theme.of(context).textTheme.displaySmall!.fontSize! * 1.2,
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
