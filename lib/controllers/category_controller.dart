import 'package:get/get.dart';

import '../core/app_router.dart';
import '../models/joke.dart';
import '../services/chucknorris_service.dart';

class CategoryController extends GetxController {
  var categories = Rx<List<String>>([]);
  var category = Rxn<Joke>();
  int get count => categories.value.length;

  var isLoading = false.obs;
  final service = Get.put(ChuckNorrisService());

  @override
  void onInit() {
    getCategories();
    super.onInit();
  }

  Future<void> getCategories() async {
    isLoading(true);
    categories(await service.categories());
    isLoading(false);
  }

  Future<void> selectCategory(String cat) async {
    category(await service.randomByCategory(cat));
    Get.toNamed(AppRouter.categoriesDetail);
  }
}
