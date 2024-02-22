import 'package:app/controllers/product_controller.dart';
import 'package:app/services/image_search_service.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageSearchController extends GetxController {
  final ImageSearchService _imageSearchService = Get.put(ImageSearchService());
  final ProductController _productController = Get.find<ProductController>();

  XFile? _pickedFile;
  Future<void> getImage(ImageSource source) async {
    _pickedFile = await _imageSearchService.getImage(source);
  }

  Future<void> getSimilarProducts(ImageSource source) async {
    await getImage(source);

    if (_pickedFile == null) {
      return;
    }

    _productController
        .setProducts(await _imageSearchService.getSimilarProducts(_pickedFile));
  }
}
