import 'package:flutter/material.dart';

class OrderConfirmedBar extends StatelessWidget implements PreferredSizeWidget {
  const OrderConfirmedBar({Key? key, required this.onBackPress}) : super(key: key);

  final VoidCallback onBackPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: onBackPress,
        icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
