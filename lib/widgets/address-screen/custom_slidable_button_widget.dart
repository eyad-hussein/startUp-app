import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

class CustomSlidableButton extends StatefulWidget {
  const CustomSlidableButton({Key? key}) : super(key: key);

  @override
  State<CustomSlidableButton> createState() => _CustomSlidableButtonState();
}

class _CustomSlidableButtonState extends State<CustomSlidableButton> {
  SlidableButtonPosition sld = SlidableButtonPosition.start;
  @override
  Widget build(BuildContext context) {
    return HorizontalSlidableButton(
      initialPosition: SlidableButtonPosition.start,
      width: 45,
      height: 25,
      buttonWidth: 21.77,
      color:
      (sld == SlidableButtonPosition.end) ? Color(0xFF4BC76D) : Colors.red,
      buttonColor: Color(0xFFFFFFFF),
      dismissible: false,
      child: const Padding(
        padding: EdgeInsets.only(left: 8.0),
      ),
      onChanged: (position) {
        setState(() {
          sld = position;
        });
      },
    );
  }
}