import 'package:http/http.dart' as http;
import 'package:http_project/models/http_model.dart';

class HttpManager {
  Future<List<HttpModel>?> getPost() async {
    var uri = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      var json = response.body;
      return httpModelFromJson(json);
    }
    return null;
  }
}
