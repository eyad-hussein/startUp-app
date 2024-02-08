import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:app/shared/config.dart';
import 'package:image_picker/image_picker.dart';


class ImageSearchService extends GetxService {

  final _picker = ImagePicker();

  Future<XFile?> getImage() async{
    XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }


  Future<bool> getServerResponse(XFile? pickedFile) async{
    http.StreamedResponse response = await updateProfile(pickedFile);
    bool success = false;
    if (response.statusCode == 200) {
      Map map = jsonDecode(await response.stream.bytesToString());
      String message = map["message"];
      success=true;
      print(message);
    } else {
      print("error posting the image");
    }
    return success;
  }

  Future<http.StreamedResponse> updateProfile(XFile? file) async{
    http.MultipartRequest request = http.MultipartRequest('POST',Uri.parse('$apiUrl/image-search'));
    if(GetPlatform.isMobile&&file!=null){
      File _file = File(file.path);
      request.files.add(http.MultipartFile('image', _file.readAsBytes().asStream(), _file.lengthSync(),filename: _file.path.split('/').last));
    }
    http.StreamedResponse response = await request.send();
    return response;
  }

}