import 'package:app/services/image_search_service.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImageSearchController extends GetxController{
  final ImageSearchService _imageSearchService = Get.put(ImageSearchService());
  XFile? _pickedFile;
  Future<void> pickImage() async
  {
    _pickedFile = await _imageSearchService.getImage();
  }
}