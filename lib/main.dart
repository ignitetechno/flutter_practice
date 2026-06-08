import 'package:flutter/material.dart';
import 'package:flutter_practice/app/employee/routes/app_pages.dart';
import 'package:flutter_practice/app/employee/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Hive.openBox('hrms');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.splash,

      getPages: AppPages.pages,
    );
  }
}