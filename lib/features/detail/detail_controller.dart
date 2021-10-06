import 'package:new_flutter_app_getx/features/home/home_controller.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  DetailController();

  static DetailController to = Get.find();

  final value = HomeController.to.selectedValue;
}
