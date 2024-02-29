// password_input_field.dart
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({Key? key}) : super(key: key);

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isHidden,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: const EdgeInsets.symmetric(
          horizontal: kHorizontalSpaceSmall,
          vertical: kVerticalSpaceSmall,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadiusSmall),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: Icon(_isHidden ? Icons.visibility : Icons.visibility_off),
          onPressed: _toggleVisibility,
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondary,
      ),
      style: kBodySmall,
    );
  }
}
