import 'package:app/widgets/add-new-card-screen/add_new_card_form_widget.dart';
import 'package:app/widgets/add-new-card-screen/card_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/add-new-card-screen/add_new_card_bar_widget.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

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
                "Add Card",
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AddNewCardBar(
              onBackPress: () => {},
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardButton(
                        icon: CardButtonType.mastercard,
                        active: true,
                      ),
                      CardButton(
                        icon: CardButtonType.paypal,
                      ),
                      CardButton(
                        icon: CardButtonType.fawry,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AddNewCardForm(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
