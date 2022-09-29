import 'package:ecommerce/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static const client = http.Client;
  //Method (meaning Function)
  static Future<List<ProductModel>?> fetchProduct() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}
