import 'dart:convert';
import 'dart:io';

import 'package:app/models/product_model.dart';
import 'package:app/services/image_search_service.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageSearchController extends GetxController{
  final ImageSearchService _imageSearchService = Get.put(ImageSearchService());
  XFile? _pickedFile;
  Future<void> getImage(ImageSource source) async
  {
    _pickedFile = await _imageSearchService.getImage(source);
  }

  Future<List<ProductModel>> getSimilarProducts(ImageSource source) async{
    await getImage(source);
    return  _imageSearchService.getSimilarProducts(_pickedFile);
  }
}