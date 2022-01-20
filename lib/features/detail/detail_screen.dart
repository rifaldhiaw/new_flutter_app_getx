import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_controller.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app_title".tr),
      ),
      body: SafeArea(
          child: Center(
        child: Obx(() => Text(controller.value.value?.name ?? "")),
      )),
    );
  }
}
