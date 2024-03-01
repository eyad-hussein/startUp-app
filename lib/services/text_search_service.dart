import 'package:get/get.dart';
import 'package:app/shared/config.dart';
import 'package:http/http.dart' as http;

class TextSearchService extends GetxService {
  Future<void>? requestSimilarImages(String description) async {
    final response = await http.post(
      Uri.parse('$apiUrl/text-search'),
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'text': description,
      },
    );
  }
}
