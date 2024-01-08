import 'package:flutter/material.dart';

class PaymentBottomNavigationBar extends StatelessWidget {
  const PaymentBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
              'Save card',
              style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontSize: Theme.of(context).textTheme.displaySmall!.fontSize! * 1.5,
                fontWeight: Theme.of(context).textTheme.displayMedium!.fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
