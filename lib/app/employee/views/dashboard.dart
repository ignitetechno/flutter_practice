import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bottom_nav_controller.dart';
import 'emp_page.dart';
import 'home.dart';
import 'profile.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final BottomNavController controller =
      Get.put(BottomNavController());

  final List<Widget> pages = [
    HomePage(),
    EmployeePage(),
    const ProfilePage(),
    const Center(child: Text("Settings Page")),
    const Center(child: Text("More Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text("GetX Dashboard"),
        ),

        // 🔥 Body now has 6 cards in Home tab
        body: pages[controller.currentIndex.value],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          currentIndex: controller.currentIndex.value,

          onTap: controller.changeIndex,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Employee",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }
}