import 'package:chuck_norris_api/view/categories.dart';
import 'package:chuck_norris_api/view/categories_detail.dart';
import 'package:get/get.dart';

class AppRouter {
  static const String categories = '/categories', categoriesDetail = '/categories_detail';

  static List<GetPage<dynamic>>? routes = [
    GetPage(name: categories, page: () => const CategoriesView()),
    GetPage(name: categoriesDetail, page: () => const CategoriesDetailView()),
  ];
}
