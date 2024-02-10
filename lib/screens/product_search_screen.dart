import 'package:app/widgets/onboarding-screen/image_search_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageSearchButton(source: ImageSource.gallery,),
            ImageSearchButton(source: ImageSource.camera,),
          ],
        ),
      ),
    );
  }
}
