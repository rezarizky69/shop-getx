import 'package:flutter_shop_getx/models/product.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<Product>?> fetchProduct() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var data = response.body;
      return productFromJson(data);
    } else {
      return null;
    }
  }

   static Future<List<Product>?> fetchProductDior() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=dior'));
    if (response.statusCode == 200) {
      var data = response.body;
      return productFromJson(data);
    } else {
      return null;
    }
  }

   static Future<List<Product>?> fetchProductLoreal() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=l%27oreal'));
    if (response.statusCode == 200) {
      var data = response.body;
      return productFromJson(data);
    } else {
      return null;
    }
  }
}
