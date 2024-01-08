import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'custom-product-card_widget.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({Key? key, required this.products}) : super(key: key);
  final Future<List<Product>> products;

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

    return FutureBuilder<List<Product>>(
      future: products,
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
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

// ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, index) {
//               int startIndex = index;
//               int endIndex = startIndex + 2;

//               if (endIndex <= snapshot.data!.length) {
//                 final firstProduct = snapshot.data![startIndex];
//                 final secondProduct = snapshot.data![startIndex + 1];

//                 return Row(
//                   children: [
//                     Expanded(
//                       child: ListTile(
//                         title: Text(firstProduct.name),
//                         subtitle: Text('\$${firstProduct.price}'),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: Text(secondProduct.name),
//                         subtitle: Text('\$${secondProduct.price}'),
//                       ),
//                     ),
//                   ],
//                 );
//               } else {
//                 // If there is only one item left, display it in a single-column row
//                 final remainingProduct = snapshot.data![startIndex];

//                 return ListTile(
//                   title: Text(remainingProduct.name),
//                   subtitle: Text('\$${remainingProduct.price}'),
//                 );
//               }
    
//             },
//           );


          // return Column(
                // children: [
                  // if (index > 0) SizedBox(height: getHeight(10)),
                  // Row(
                    // children: snapshot.data!
                        // .sublist(startIndex, endIndex)
                        // .asMap()
                        // .entries
                        // .map((entry) {
                      // int indexWithinSublist = entry.key;
                      // Product product = entry.value;
// 
                      // return Expanded(
                        // child: Padding(
                          // padding: EdgeInsets.only(
                              // left: indexWithinSublist % 2 == 1
                                  // ? getWidth(7.5)
                                  // : 0,
                              // right: indexWithinSublist % 2 == 0
                                  // ? getWidth(7.5)
                                  // : 0),
                          // child: CustomProductCard(product: product),
                        // ),
                      // );
                    // }).toList(),
                  // ),
                // ],
              // );