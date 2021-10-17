import 'package:get/get.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Controller extends GetxController {
  {{#pascalCase}}{{name}}{{/pascalCase}}Controller();

  static {{#pascalCase}}{{name}}{{/pascalCase}}Controller to = Get.find();
}
