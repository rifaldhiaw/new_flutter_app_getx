import 'package:collection/collection.dart';

import '{{#snakeCase}}{{name}}{{/snakeCase}}_data.dart';

class {{#pascalCase}}{{name}} provider{{/pascalCase}} {
  List<{{#pascalCase}}{{name}}{{/pascalCase}}> values = dummy;

  List<{{#pascalCase}}{{name}}{{/pascalCase}}> getAll() {
    return values;
  }

  {{#pascalCase}}{{name}}{{/pascalCase}}? getbyId(String id) {
    return values.firstWhereOrNull((e) => e.id == id);
  }

  void save({{#pascalCase}}{{name}}{{/pascalCase}} target) {
    if (values.contains(target)) {
      values = values.map((e) => e.id == target.id ? target : e).toList();
    } else {
      values.add(target);
    }
  }
}

final dummy = List.generate(
  5,
  (index) => {{#pascalCase}}{{name}}{{/pascalCase}}(
    id: index.toString(),
  ),
);
