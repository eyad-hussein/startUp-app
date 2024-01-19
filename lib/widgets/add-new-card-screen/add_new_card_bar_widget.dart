import 'package:flutter/material.dart';

class AddNewCardBar extends StatelessWidget implements PreferredSizeWidget {
  const AddNewCardBar({Key? key, required this.onBackPress}) : super(key: key);

  final VoidCallback onBackPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: onBackPress,
        icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary),
      ),
      title: const Text(
        "Add New Card",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
