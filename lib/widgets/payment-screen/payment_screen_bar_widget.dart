import 'package:flutter/material.dart';

class PaymentScreenBar extends StatelessWidget implements PreferredSizeWidget{
  const PaymentScreenBar({Key? key, required this.onBackPress}) : super(key: key);

  final VoidCallback onBackPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onBackPress,
        icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
