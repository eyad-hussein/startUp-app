import 'package:get/get.dart';
import 'package:app/models/product_model.dart';

class CartController extends GetxController {
  final RxList<ProductModel> cartItems = <ProductModel>[].obs;

  void addToCart(ProductModel product) {
    if (cartItems.any((item) => item.id == product.id)) {
      final existingProduct =
          cartItems.firstWhere((item) => item.id == product.id);
      existingProduct.quantity = (existingProduct.quantity ?? 0) + 1;
    } else {
      product.quantity = 1;
      cartItems.add(product);
    }
  }

  void removeFromCart(ProductModel product) {
    cartItems.removeWhere((item) => item.id == product.id);
  }

  int getCartItemCount() {
    return cartItems.length;
  }
}
