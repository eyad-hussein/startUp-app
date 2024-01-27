import 'package:flutter/material.dart';

enum CardButtonType { mastercard, paypal, fawry }

Map<CardButtonType, String> cardButtonTypeMap = {
  CardButtonType.mastercard: "mastercard.png",
  CardButtonType.paypal: "paypal.png",
  CardButtonType.fawry: "fawry.jpeg",
};

class CardButton extends StatelessWidget {
  final bool active;
  final CardButtonType icon;
  const CardButton({super.key, this.active = false, required this.icon});

  List<Color> cardButtonColors(CardButtonType icon) {
    switch (icon) {
      case CardButtonType.mastercard:
        return const [
          Color(0xFFFFEDE3),
          Color(0xFFFF5F00),
        ];
      case CardButtonType.paypal:
        return const [
          Color.fromARGB(255, 219, 226, 255),
          Color.fromARGB(255, 0, 51, 255),
        ];
      case CardButtonType.fawry:
        return const [
          Color.fromARGB(255, 255, 251, 189),
          Color.fromARGB(255, 253, 211, 2),
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Color>? buttonColors = active ? cardButtonColors(icon) : null;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: active ? buttonColors![0] : const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: active
              ? BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: buttonColors![1],
                )
              : BorderSide.none,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      ),
      onPressed: () {},
      child: Image.asset(
        "assets/icons/${cardButtonTypeMap[icon]}",
        width: 25,
        height: 20,
      ),
    );
  }
}
