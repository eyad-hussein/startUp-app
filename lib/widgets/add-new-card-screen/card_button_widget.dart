import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final bool active;
  final String iconPath;
  const CardButton({super.key, this.active = false, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            active ? const Color(0xFFFFEDE3) : const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: active
              ? const BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFFF5F00),
                )
              : BorderSide.none,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      ),
      onPressed: () {},
      child: Image.asset(
        "assets/icons/$iconPath.png",
        width: 25,
        height: 20,
      ),
    );
  }
}
