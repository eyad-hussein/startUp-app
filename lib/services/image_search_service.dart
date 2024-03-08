import 'dart:convert';

import 'package:app/models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:app/shared/config.dart';
import 'package:image_picker/image_picker.dart';

class ImageSearchService extends GetxService {
  final _picker = ImagePicker();

  Future<XFile?> getImage(ImageSource source) async {
    XFile? pickedFile = await _picker.pickImage(source: source);
    return pickedFile;
  }

  Future<http.StreamedResponse> sendRequest(XFile? file) async {
    http.MultipartRequest request =
        http.MultipartRequest('POST', Uri.parse('$apiUrl/image-search'));
    if (GetPlatform.isMobile && file != null) {
      File filePath = File(file.path);
      request.files.add(http.MultipartFile(
          'image', filePath.readAsBytes().asStream(), filePath.lengthSync(),
          filename: filePath.path.split('/').last));
    }
    http.StreamedResponse response = await request.send();
    return response;
  }

  // This has to have null validation.
  Future<List<ProductModel>> getSimilarProducts(XFile? pickedFile) async {
    http.StreamedResponse response = await sendRequest(pickedFile);
    Map map = jsonDecode(await response.stream.bytesToString());
    List<ProductModel> products = getProductsFromMap(map);
    return products;
  }

  List<ProductModel> getProductsFromMap(Map map){
    return (map['products'] as List)
        .map((product) => ProductModel.fromJson(product))
        .toList();
  }

  Future<List<ProductModel>> getSimilarProductsFromUrl(String url) async {
    final response = await http.post(
      Uri.parse('$apiUrl/image-search/text'),
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'url': url,
      },
    );
    Map map = jsonDecode(response.body);
    List<ProductModel> products = getProductsFromMap(map);
    return products;
  }


}
