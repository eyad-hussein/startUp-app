import 'package:app/shared/themes.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const TitleAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceSmall),
      child: AppBar(
        title: Text(
          title,
          style: kPrimaryTextTheme.titleMedium,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
