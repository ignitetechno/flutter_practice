import 'package:flutter_practice/app/employee/bindings/pay_bindings.dart';
import 'package:flutter_practice/app/employee/bindings/storage_binding.dart';
import 'package:flutter_practice/app/employee/bindings/test_binding.dart';
import 'package:flutter_practice/app/employee/views/pay_page.dart';
import 'package:flutter_practice/app/employee/views/profile.dart';
import 'package:flutter_practice/app/employee/views/storage_page.dart';
import 'package:flutter_practice/app/employee/views/test_page.dart';
import 'package:get/get.dart';

import '../bindings/dashboard_binding.dart';
import '../bindings/employee_binding.dart';
import '../bindings/splash_binding.dart';
import '../views/dashboard.dart';
import '../views/emp_page.dart';
import '../views/employee_details_page.dart';
import '../views/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),

    GetPage(
      name: AppRoutes.employee,
      page: () => EmployeePage(),
      binding: EmployeeBinding(),
    ),

    GetPage(
      name: AppRoutes.employeeDetails,
      page: () => EmployeeDetailsPage(),
      binding: EmployeeBinding(),
    ),

    GetPage(name: AppRoutes.employeeDetails, page: () => ProfilePage()),

    GetPage(name: AppRoutes.pay, page: () => PayPage(), binding: PayBinding()),
    GetPage(
      name: '/storage',
      page: () => StoragePage(),
      binding: StorageBinding(),
    ),
    GetPage(
      name: AppRoutes.test,
      page: () => TestPage(),
      binding: TestBinding(),
    ),
  ];
}
