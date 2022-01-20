import 'package:get/get.dart';
import 'package:new_flutter_app_getx/features/home/home_controller.dart';

import 'domains/data/data_repository.dart';
import 'features/detail/detail_controller.dart';
import 'features/detail/detail_screen.dart';
import 'features/home/home_screen.dart';

class Routes {
  static const home = '/home';
  static const detail = '/detail';

  static const initial = home;

  static final routes = [
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      binding: BindingsBuilder.put(
        () => HomeController(dataRepository: DataRepository()),
      ),
    ),
    GetPage(
      name: detail,
      page: () => const DetailScreen(),
      binding: BindingsBuilder.put(() => DetailController()),
    ),
  ];
}
