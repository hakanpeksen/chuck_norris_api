import 'package:get/get.dart';

import '../models/joke.dart';
import '../providers/chucknorris_provider.dart';

class ChuckNorrisService {
  final _provider = Get.put(ChuckNorrisProvider());

  Future<List<String>> categories() async {
    List<String> categories = [];
    var response = await _provider.categories();
    if (response.isOk) {
      categories = List.from(response.body);
      return categories;
    }
    return [];
  }

  Future<Joke?> randomByCategory(String cat) async {
    Joke? result;
    var response = await _provider.randomByCategory(cat);
    if (response.isOk) result = Joke.fromJson(response.body);
    return result;
  }
}
