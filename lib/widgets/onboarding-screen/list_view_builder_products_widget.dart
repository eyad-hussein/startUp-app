import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import 'custom_product_card_widget.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({Key? key, required this.products}) : super(key: key);
  final Future<List<ProductModel>> products;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return FutureBuilder<List<ProductModel>>(
      future: products,
      builder:
          (BuildContext context, AsyncSnapshot<List<ProductModel>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else {
          print("length ${snapshot.data!.length}");

          return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing:
                    20, // Add horizontal spacing between grid items
                mainAxisSpacing: 8.0,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomProductCard(product: snapshot.data![index]);
              });
        }
      },
    );
  }
}
