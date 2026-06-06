import 'package:flutter/material.dart';
import 'package:flutter_practice/app/employee/bindings/initial_binding.dart';
import 'package:flutter_practice/app/employee/routes/app_pages.dart';
import 'package:flutter_practice/app/employee/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return GetMaterialApp(
  debugShowCheckedModeBanner: false,

  initialBinding: InitialBinding(),

  initialRoute: AppRoutes.splash,

  getPages: AppPages.pages,
);
  }
}
