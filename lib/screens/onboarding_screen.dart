import 'package:app/shared/ui/ui_helpers.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'STYLEACH',
            style: kTitleBebasNeue,
          ),
          centerTitle: true,
        ),
        // body: ,
      ),
    );
  }
}
