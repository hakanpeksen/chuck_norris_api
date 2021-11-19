import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(CategoryController());
    return Scaffold(
        appBar: AppBar(title: const Text('Categories')),
        body: Obx(() {
          if (ctrl.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.separated(
              itemCount: ctrl.count,
              itemBuilder: (context, index) {
                final cat = ctrl.categories.value[index];
                return buildCard(cat, ctrl);
              },
              separatorBuilder: (context, index) => const Divider(thickness: 2, height: 0));
        }));
  }

  Card buildCard(String cat, CategoryController ctrl) {
    return Card(
        elevation: 0,
        child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            title: Text(cat),
            onTap: () => ctrl.selectCategory(cat)));
  }
}
