import 'package:flutter/material.dart';
import 'package:new_flutter_app_getx/routes.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app_title".tr),
      ),
      body: SafeArea(
        child: Obx(() => ListView(
              children: controller.values
                  .map(
                    (e) => ListTile(
                      title: Text(e.name),
                      onTap: () {
                        Get.toNamed(Routes.detail, arguments: e);
                      },
                    ),
                  )
                  .toList(),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.addValue(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
