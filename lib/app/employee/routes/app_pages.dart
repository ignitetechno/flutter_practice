import 'package:flutter_practice/app/employee/routes/app_routes.dart';
import 'package:flutter_practice/app/employee/views/dashboard.dart';
import 'package:flutter_practice/app/employee/views/emp_page.dart';
import 'package:flutter_practice/app/employee/views/employee_details_page.dart';
import 'package:get/get.dart';



class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardPage(),
    ),

    GetPage(
      name: AppRoutes.employee,
      page: () => EmployeePage(),
    ),

    GetPage(
      name: AppRoutes.employeeDetails,
      page: () => EmployeeDetailsPage(),
    ),
  ];
}