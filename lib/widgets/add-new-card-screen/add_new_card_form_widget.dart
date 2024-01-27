import 'package:flutter/material.dart';
import 'package:app/widgets/other_form_field_widget.dart';

class AddNewCardForm extends StatelessWidget {
  const AddNewCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OtherFormField(
            label: "Card Owner",
            onChanged: (value) => {},
            hintText: "Ahmed Anwar",
          ),
          const SizedBox(
            height: 20,
          ),
          OtherFormField(
            label: "Card Number",
            onChanged: (value) => {},
            hintText: "5254 7421 8734 7690",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: OtherFormField(
                  label: "EXP",
                  onChanged: (value) => {},
                  hintText: "07/25",
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: OtherFormField(
                  label: "CVV",
                  onChanged: (value) => {},
                  hintText: "429",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
