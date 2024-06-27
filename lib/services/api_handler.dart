import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:fake_store/models/products_model.dart';
import 'package:fake_store/consts/api_consts.dart';

class APIHandler {
  static Future<List<ProductsModel>> getAllProducts() async {
    var uri = Uri.https(BASE_URL, "api/v1/products");
    var response = await http.get(
      uri,
    );
    var data = jsonDecode(response.body);
    List tempList = [];

    for (var value in data) {
      tempList.add(value);
    }
    return ProductsModel.productsFromSnapshot(tempList);
  }
}
