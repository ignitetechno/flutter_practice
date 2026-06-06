import 'package:flutter_practice/app/employee/controller/HrmsController.dart';
import 'package:flutter_practice/app/employee/controller/bottom_nav_controller.dart';
import 'package:flutter_practice/app/employee/controller/employee_controller.dart';
import 'package:flutter_practice/app/employee/controller/splash_controller.dart';
import 'package:get/get.dart';


// will be used to initialize all the controllers at the start of the app
class InitialBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<SplashController>(
      () => SplashController(),
    );

    Get.lazyPut<BottomNavController>(
      () => BottomNavController(),
    );

    Get.lazyPut<EmployeeController>(
      () => EmployeeController(),
    );

    Get.lazyPut<HrmsController>(
      () => HrmsController(),
    );
  }
}