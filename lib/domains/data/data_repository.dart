import 'package:new_flutter_app_getx/domains/data/data_model.dart';
import 'package:collection/collection.dart';

class DataRepository {
  List<MyData> values = dummy;

  List<MyData> getAll() {
    return values;
  }

  MyData? getbyId(String id) {
    return values.firstWhereOrNull((e) => e.id == id);
  }

  void save(MyData target) {
    if (values.contains(target)) {
      values = values.map((e) => e.id == target.id ? target : e).toList();
    } else {
      values.add(target);
    }
  }
}

final dummy = List.generate(
  5,
  (index) => MyData(
    id: index.toString(),
    name: (index + 1).toString(),
  ),
);
