// continue_button.dart
import 'package:flutter/material.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/shared/themes.dart';
import 'package:app/widgets/shared/mixed_text_widget.dart';
// ignore_for_file: unused_import

class ContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ContinueButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalSpaceMedium, vertical: kVerticalSpaceTiny),
        textStyle: kBodySmall,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBorderRadiusSmall),
        ),
      ),
      child: Text(
        'Continue',
        style:
            kBodySmall.copyWith(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
