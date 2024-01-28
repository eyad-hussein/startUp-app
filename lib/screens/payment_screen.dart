import 'package:app/widgets/add-new-card-screen/add_new_card_form_widget.dart';
import 'package:app/widgets/payment-screen/add_new_card_button_widget.dart';
import 'package:app/widgets/payment-screen/card_carousel_widget.dart';
import 'package:app/widgets/payment-screen/payment_bar_widget.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () async {},
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Container(
            color: Theme.of(context).colorScheme.primary,
            height: 70,
            child: Center(
              child: Text(
                "Pay",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.background,
                  fontSize:
                      Theme.of(context).textTheme.displaySmall!.fontSize! * 1.5,
                  fontWeight:
                      Theme.of(context).textTheme.displayMedium!.fontWeight,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top * 3.5,
          child: Column(
            children: [
              PaymentBar(
                onBackPress: () => {},
              ),
              const CardCarousel(),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    AddNewCardButton(),
                    SizedBox(
                      height: 25,
                    ),
                    AddNewCardForm(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
