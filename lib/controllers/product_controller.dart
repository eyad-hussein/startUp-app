import 'package:app/repositories/product_repository.dart';
import 'package:app/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  ProductRepository productRepository = ProductRepository();

  Future<List<Product>> getProducts() async {
    return await productRepository.showMain();
  }
}
