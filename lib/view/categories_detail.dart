import '../controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesDetailView extends StatelessWidget {
  const CategoriesDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<CategoryController>();
    return Scaffold(
      appBar: AppBar(title: const Text('Categories Detail')),
      body: Obx(
        () {
          return ctrl.category.value != null
              ? Container(
                  margin: const EdgeInsets.all(15),
                  child: Text(ctrl.category.value!.content.toString(),
                      style: context.textTheme.headline5),
                )
              : Container();
        },
      ),
    );
  }
}
