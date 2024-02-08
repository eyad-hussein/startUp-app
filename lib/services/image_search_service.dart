import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class ImageSearchService extends GetxService {

  final _picker = ImagePicker();

  Future<XFile?> getImage() async{
    XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }


}