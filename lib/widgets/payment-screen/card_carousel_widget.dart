import 'package:flutter/material.dart';

List<String> images = ["assets/images/card1.png", "assets/images/card1.png"];

class CardCarousel extends StatelessWidget {
  const CardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          itemCount: 2,
          pageSnapping: true,
          itemBuilder: (context, pagePosition) {
            return Image.asset(images[pagePosition]);
          }),
    );
  }
}
