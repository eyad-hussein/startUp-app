import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const TitleAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: Theme.of(context).textTheme.displayMedium!.fontWeight,
          fontSize: Theme.of(context).textTheme.bodySmall!.fontSize!,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
