import 'package:new_flutter_app_getx/features/detail/detail_binding.dart';
import 'package:get/get.dart';

import 'features/detail/detail_screen.dart';
import 'features/home/home_binding.dart';
import 'features/home/home_screen.dart';

class Routes {
  static const home = '/home';
  static const detail = '/detail';

  static const initial = home;

  static final routes = [
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: detail,
      page: () => const DetailScreen(),
      binding: DetailBinding(),
    ),
  ];
}
