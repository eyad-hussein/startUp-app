import 'package:app/models/brand_model.dart';
import 'package:app/models/product_model.dart';
import 'package:get/get.dart';
import 'package:app/services/product_service.dart';

class ProductController extends GetxController {
  final ProductService _productService = Get.put(ProductService());

  Future<List<ProductModel>> getProducts() async {
    return await _productService.dummyProducts();
  }

  Future<List<BrandModel>> getBrands() async {
    return await _productService.dummyBrands();
  }
}
