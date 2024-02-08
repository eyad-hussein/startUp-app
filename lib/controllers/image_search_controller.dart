import 'dart:convert';
import 'dart:io';

import 'package:app/services/image_search_service.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageSearchController extends GetxController{
  final ImageSearchService _imageSearchService = Get.put(ImageSearchService());
  XFile? _pickedFile;
  Future<void> getImage() async
  {
    _pickedFile = await _imageSearchService.getImage();
  }

  Future<bool> upload() async{
    await getImage();
    bool success = await _imageSearchService.getServerResponse(_pickedFile);
    if(success){
      print("Recieved");
    }
    return success;
  }





}