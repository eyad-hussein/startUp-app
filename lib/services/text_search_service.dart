import 'dart:convert';

import 'package:get/get.dart';
import 'package:app/shared/config.dart';
import 'package:http/http.dart' as http;

class TextSearchService extends GetxService {
  Future<List<String>> requestSimilarImages(String description) async {
    final response = await http.post(
      Uri.parse('$apiUrl/text-search'),
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'text': description,
      },
    );
    List<dynamic> dynamicUrls = jsonDecode(response.body)['urls'];
    List<String> urls = dynamicUrls.map((url) => url.toString()).toList();
    return urls;
  }
}
