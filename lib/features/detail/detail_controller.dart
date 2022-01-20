import 'package:new_flutter_app_getx/domains/data/data_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  DetailController();

  final value = Rx<MyData?>(null);

  @override
  void onInit() {
    value.value = Get.arguments;
    super.onInit();
  }
}
