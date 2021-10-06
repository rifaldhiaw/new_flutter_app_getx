import 'package:flutter/material.dart';
import 'package:new_flutter_app_getx/lang.dart';
import 'package:get/get.dart';

import 'routes.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.initial,
      defaultTransition: Transition.fade,
      getPages: Routes.routes,
      title: "app_title".tr,
      theme: ThemeConfig.createLightTheme(Colors.blueGrey),
      locale: Lang.locale,
      fallbackLocale: Lang.fallbackLocale,
      translations: Lang(),
    );
  }
}
