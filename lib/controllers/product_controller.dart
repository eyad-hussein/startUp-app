import 'package:app/models/brand_model.dart';
import 'package:app/models/product_model.dart';
import 'package:get/get.dart';
import 'package:app/services/product_service.dart';

class ProductController extends GetxController {
  final ProductService _productService = Get.put(ProductService());
  final RxList<ProductModel> products = <ProductModel>[].obs;
  final RxList<BrandModel> brands = <BrandModel>[].obs;

  void setProducts(List<ProductModel> products) {
    this.products.value = products;
    setBrands();
  }

  void setBrands() {
    List<BrandModel> brands = [];
    for (var product in products) {
      if (!brands.contains(product.brand)) {
        brands.add(product.brand);
      }
    }
    this.brands.value = brands;
  }
}
