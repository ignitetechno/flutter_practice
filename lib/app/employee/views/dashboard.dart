import 'package:flutter/material.dart';
import 'package:flutter_practice/app/employee/views/emp_page.dart';
import 'package:flutter_practice/app/employee/views/home.dart';
import 'package:flutter_practice/app/employee/views/profile.dart';
import 'package:get/get.dart';

import '../controller/bottom_nav_controller.dart';


class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final BottomNavController controller =
      Get.put(BottomNavController());

  final List<Widget> pages = [
    const HomePage(),
    EmployeePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text("GetX Bottom Navigation"),
        ),

        body: pages[controller.currentIndex.value],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex:
              controller.currentIndex.value,

          onTap: controller.changeIndex,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Employee",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}