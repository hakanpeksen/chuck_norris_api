import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app_router.dart';
import 'view/categories.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const CategoriesView(),
      getPages: AppRouter.routes,
    );
  }
}
