import 'package:get/get.dart';

class HrmsController extends GetxController {

  var employeeCount = 120.obs;
  var presentCount = 98.obs;
  var absentCount = 22.obs;
  var departmentCount = 5.obs;
  var salary = "5.2M".obs;
  var projectCount = 14.obs;

  void incrementEmployee() {
    employeeCount.value++;
  }

  void refreshDashboard() async {
    await Future.delayed(const Duration(seconds: 1));

    employeeCount.value = 125;
    presentCount.value = 100;
    absentCount.value = 25;
    departmentCount.value = 6;
    salary.value = "5.5M";
    projectCount.value = 16;
  }
}