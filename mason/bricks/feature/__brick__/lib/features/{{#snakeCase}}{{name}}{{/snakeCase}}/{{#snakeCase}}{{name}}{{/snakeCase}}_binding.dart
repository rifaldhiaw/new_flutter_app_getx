import 'package:get/get.dart';
import '{{#snakeCase}}{{name}}{{/snakeCase}}_controller.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<{{#pascalCase}}{{name}}{{/pascalCase}}Controller>(
      () => {{#pascalCase}}{{name}}{{/pascalCase}}Controller(),
    );
  }
}
