import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddNewCardButton extends StatelessWidget {
  const AddNewCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          foregroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
              side: const BorderSide(),
              borderRadius: BorderRadius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/plus.svg"),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Add New Card",
              style: TextStyle(
                  fontSize:
                      Theme.of(context).textTheme.displaySmall!.fontSize! * 1.2,
                  fontWeight:
                      Theme.of(context).textTheme.displaySmall!.fontWeight!),
            )
          ],
        ));
  }
}
