import 'package:app/models/brand_model.dart';
import 'package:app/models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:app/shared/config.dart';

class ProductService extends GetxService {
  Future<List<ProductModel>> dummyProducts() async {
    final response =
        await http.get(Uri.parse('$apiUrl/dummy-products'), headers: {
      'Accept': 'application/json',
    });

    // print(jsonDecode(response.body)['products'][0]['image']['subimages']);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body)['products'];

      final List<ProductModel> products = result
          .map<ProductModel>((product) => ProductModel.fromJson(product))
          .toList();
      return products;
    } else {
      throw Exception('Failed to retrieve products');
    }
  }

  Future<List<BrandModel>> dummyBrands() async {
    final response =
        await http.get(Uri.parse('$apiUrl/dummy-products'), headers: {
      'Accept': 'application/json',
    });

    // print(jsonDecode(response.body)['products'][0]['image']['subimages']);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body)['products'];
      final List<BrandModel> brands = [];

      final List<BrandModel> res = result.map<BrandModel>((product) {
        ProductModel.fromJson(product);

        if (!brands.contains(product['brand'])) {
          return BrandModel.fromJson(product['brand']);
        }
      }).toList();
      return res;
    } else {
      throw Exception('Failed to retrieve products');
    }
  }


}
