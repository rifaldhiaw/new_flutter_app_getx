import 'package:new_flutter_app_getx/domains/data/data_model.dart';
import 'package:new_flutter_app_getx/domains/data/data_repository.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';

class HomeController extends GetxController {
  HomeController({required this.dataRepository});

  final DataRepository dataRepository;

  final values = <MyData>[].obs;

  @override
  void onInit() {
    values.value = dataRepository.getAll();
    super.onInit();
  }

  void addValue() {
    final last = values.lastOrNull ?? const MyData(id: "0", name: "0");

    dataRepository.save(
      MyData(
          id: (int.parse(last.id) + 1).toString(),
          name: (int.parse(last.name) + 1).toString()),
    );
    values.value = [...dataRepository.getAll()];
  }
}
