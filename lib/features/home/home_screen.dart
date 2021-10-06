import 'package:flutter/material.dart';
import 'package:new_flutter_app_getx/routes.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app_title".tr),
      ),
      body: SafeArea(
        child: Obx(() => ListView(
              children: HomeController.to.values
                  .map(
                    (e) => ListTile(
                      title: Text(e.name),
                      onTap: () {
                        HomeController.to.setSelectedValue(e);
                        Get.toNamed(Routes.detail);
                      },
                    ),
                  )
                  .toList(),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => HomeController.to.addValue(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
