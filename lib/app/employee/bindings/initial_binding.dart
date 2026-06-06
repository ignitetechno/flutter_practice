import 'package:flutter_practice/app/employee/controller/HrmsController.dart';
import 'package:flutter_practice/app/employee/controller/bottom_nav_controller.dart';
import 'package:flutter_practice/app/employee/controller/employee_controller.dart';
import 'package:flutter_practice/app/employee/controller/splash_controller.dart';
import 'package:get/get.dart';



class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(BottomNavController());
    Get.put(EmployeeController());
    Get.put(HrmsController());
  }
}