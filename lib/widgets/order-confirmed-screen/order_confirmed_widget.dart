import 'package:flutter/material.dart';

class OrderConfirmed extends StatelessWidget {
  final String imagePath;

  const OrderConfirmed({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(imagePath, width: 1000, height: 300), // Adjust width and height as needed
    );
  }
}
