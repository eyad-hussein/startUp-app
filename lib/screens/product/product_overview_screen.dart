import 'package:app/controllers/cart_controller.dart';
import 'package:app/models/product_model.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/product_description_widget.dart';
import 'package:app/widgets/product/product-overview-screen/product_description/total_price_widget.dart';
import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/models/image_model.dart';
import 'package:app/models/brand_model.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final CartController _cartController = Get.find<CartController>();

    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    ProductModel product;
    try {
      product = Get.arguments as ProductModel;
      print(product.id);
    } catch (e) {
      product = ProductModel(
          id: 1,
          name: "hola",
          image: ImageModel(
            id: 1,
            url:
                "https://storage.googleapis.com/styleach.appspot.com/images/image1/image1.png?GoogleAccessId=firebase-adminsdk-9hieq%40styleach.iam.gserviceaccount.com&Expires=4863009472&Signature=Jwm8s%2FUMyexL1F8XODP4pLbu2l4vgVOSWDDkaTIwjz03rMTFLgEtaU%2Bad2N045eXpMys15yGhVvfLUGF%2FBzu%2FvlnA7cJpgIpwj98yO0DnIcYRcvtHi6nPX%2FlAXtc8dAorcbe8dv8PKrxWSg%2BysAF39s9nz45GV5gugmQpKoyACqi%2FhdugbaDOJ%2BKOPpXzNp4RzXofjwJUffiq1UQAV0uChOLaJ7aq6jjShtRkUBUfNsSXtaK4FOhyPGPoRfpS%2FpTxdqLK2v7KWEC%2BsANeI1%2Ba640dM95Lg6r%2B0ZN1t%2BxWrId7d2a3%2FH8HQsAZtsNBmBZmIPo78yjgbbAN7x5xAHYrA%3D%3D&generation=1706700502245476",
          ),
          subImages: [],
          price: 125,
          description:
              "lorem ipsum dolor sit amet consectetur adipiscing elit ",
          shortDescription: "lorem ipsum dolor sit amet",
          brand: BrandModel(address: "", name: "Nike", id: 1),
          sizesAvailable: [],
          reviews: []);
    }
    print(product.id);
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          _cartController.addToCart(product);
        },
        child: const MainBottomNavigationBar(content: "Add To Cart"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: kVerticalSpaceLarge),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductDescription(
                    product: product,
                    getHeight: getHeight,
                    getWidth: getWidth,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalSpaceRegular,
                vertical: kVerticalSpaceSmall,
              ),
              child: TotalPrice(getHeight: getHeight, getWidth: getWidth),
            ),
          ),
        ],
      ),
    );
  }
}
