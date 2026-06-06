import 'package:get/get.dart';

import '../views/splash_screen.dart';
import '../views/dashboard.dart';
import '../views/emp_page.dart';
import '../views/employee_details_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [

    // 🔥 Splash first (entry point)
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
    ),

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