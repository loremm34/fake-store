import 'package:http/http.dart' as http;
import 'package:fake_store/consts/api_consts.dart';

class APIHandler {
  Future<void> getAllProducts() async {
    var uri = Uri.https(BASE_URL, "api/v1/products");
    var response = await http.get(
      uri,
    );
  }
}
