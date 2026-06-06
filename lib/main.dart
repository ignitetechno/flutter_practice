import 'package:flutter/material.dart';
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

      title: 'GetX App',

      // প্রথম কোন page open হবে
      initialRoute: AppRoutes.dashboard,

      // সব routes এখানে define করা আছে
      getPages: AppPages.pages,

      // optional theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}