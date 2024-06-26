import 'package:http/http.dart' as http;

class APIHandler {
  Future<void> getAllProducts() async {
    var response = await http.get(
      Uri.parse("https://api.escuelajs.co/api/v1/products"),
    );
  }
}
