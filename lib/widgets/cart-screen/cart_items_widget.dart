import 'package:app/controllers/cart_controller.dart';
import 'package:app/widgets/cart-screen/cart_product_card/cart_product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartItems extends StatelessWidget {
  final CartController controller;
  const CartItems({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: controller.getCartItemCount(),
        itemBuilder: (context, index) {
          return CartProductCard(
            product: controller.cartItems[index],
            controller: controller,
          );
        },
      ),
    );
  }
}
