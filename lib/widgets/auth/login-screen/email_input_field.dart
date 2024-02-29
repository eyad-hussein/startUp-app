// email_input_field.dart
import 'package:flutter/material.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/shared/themes.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email Address',
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: kHorizontalSpaceTiny,
          vertical: kVerticalSpaceTiny,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadiusTiny),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondary,
      ),
      style: kBodySmall,
    );
  }
}
