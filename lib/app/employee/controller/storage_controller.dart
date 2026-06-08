import 'package:get/get.dart';
import 'package:hive/hive.dart';

class StorageController extends GetxController {

  final box = Hive.box('hrms');

  var userName = ''.obs;

  @override
  void onInit() {
    super.onInit();

    loadData();
  }

  void loadData() {
    userName.value = box.get('username', defaultValue: '');
  }

  void saveData(String name) {
    box.put('username', name);

    userName.value = name;

    Get.snackbar(
      "Success",
      "Data Saved Successfully",
    );
  }

  void clearData() {
    box.delete('username');

    userName.value = '';

    Get.snackbar(
      "Deleted",
      "Data Removed",
    );
  }
}