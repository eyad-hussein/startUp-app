import 'package:app/models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:app/shared/config.dart';

class ProductService extends GetxService {
  Future<List<Product>> showMain() async {
    final response =
        await http.get(Uri.parse('$apiUrl/products/main'), headers: {
      'Accept': 'application/json',
    });

    // print(jsonDecode(response.body)['products'][0]['image']['subimages']);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body)['products'];

      final List<Product> products =
          result.map<Product>((product) => Product.fromJson(product)).toList();
      return products;
    } else {
      throw Exception('Failed to retrieve products');
    }
  }
}
