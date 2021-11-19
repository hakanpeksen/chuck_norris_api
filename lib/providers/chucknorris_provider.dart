import 'package:get/get_connect.dart';

class ChuckNorrisProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://api.chucknorris.io/jokes/';
    httpClient.maxAuthRetries = 3;
    super.onInit();
  }

  Future<Response> categories() async => await get("categories");

  Future<Response> randomByCategory(String cat) async => await get("random?category=$cat");
}
