import 'package:new_flutter_app_getx/domains/data/data_repository.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        dataRepository: DataRepository(),
      ),
    );
  }
}
