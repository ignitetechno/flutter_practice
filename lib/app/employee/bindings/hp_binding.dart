import 'package:flutter_practice/app/employee/controller/hp_controller.dart';
import 'package:get/get.dart';


class HpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HpController>(
          () => HpController(),
    );
  }
}