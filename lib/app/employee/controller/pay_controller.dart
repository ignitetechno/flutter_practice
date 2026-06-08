import 'package:get/state_manager.dart';

class PayController extends GetxController {
  var salary = 5000.obs;

  void increaseSalary() {
    salary.value += 500;
  }
}