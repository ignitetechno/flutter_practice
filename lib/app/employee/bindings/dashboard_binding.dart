import 'package:get/get.dart';

import '../controller/HrmsController.dart';
import '../controller/bottom_nav_controller.dart';



class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(
          () => BottomNavController(),
    );

    Get.lazyPut<HrmsController>(
          () => HrmsController(),
    );
  }
}