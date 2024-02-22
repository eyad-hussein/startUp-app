import 'package:app/models/brand_model.dart';
import 'package:get/get.dart';

class BrandController extends GetxController {
  final RxList<BrandModel> brands = <BrandModel>[].obs;

  void setBrands(List<BrandModel> brands) {
    this.brands.value = brands;
  }
}
