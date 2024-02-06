import 'package:app/models/product.dart';
import 'package:get/get.dart';
import 'package:app/services/product_service.dart';

class ProductController extends GetxController {
  final ProductService _productService = Get.put(ProductService());

  Future<List<Product>> getProducts() async {
    return await _productService.showMain();
  }
}
