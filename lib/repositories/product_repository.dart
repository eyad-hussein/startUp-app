import 'package:app/models/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductRepository {
  final String apiUrl = "http://127.0.0.1:8000/api";

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
