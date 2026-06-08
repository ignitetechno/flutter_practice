import 'package:flutter/material.dart';
import 'package:flutter_practice/app/employee/controller/HrmsController.dart';
import 'package:flutter_practice/app/employee/routes/app_routes.dart';
import 'package:flutter_practice/app/employee/views/profile.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HrmsController controller = Get.put(HrmsController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔥 HEADER
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  CircleAvatar(child: Icon(Icons.person)),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                        "HR Dashboard",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // 🔥 GRID
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: [
                // ✅ CLICKABLE BUTTON CARDS (এখানে Obx দরকার নেই)
                _cardButton("Add Employee", Icons.person_add, () {
                  // আপনার main.dart-এ Named Route সেট করা থাকলে এটি রাখুন:
                  Get.to(
                    () => const ProfilePage(),
                  ); // অথবা Named Route না থাকলে নিচের লাইনটি ব্যবহার করুন:
                  // Get.to(() => const ProfilePage());
                }),

                _cardButton("Employees", Icons.people, () {
                  Get.toNamed('/employee');
                  // অথবা Named Route না থাকলে: Get.to(() => const EmpPage());
                }),
                _cardButton("Pay", Icons.money, () {
                  Get.toNamed(AppRoutes.pay);
                  // অথবা Named Route না থাকলে: Get.to(() => const PayPage());
                }),
                _cardButton("Storage", Icons.storage, () {
                  Get.toNamed(AppRoutes.storage);
                }),
                          _cardButton("Test", Icons.mic_external_on_rounded, () {
                  Get.toNamed(AppRoutes.test);
                }),

                // ✅ DYNAMIC CARDS (শুধুমাত্র ভ্যালু পরিবর্তনের জায়গায় Obx ব্যবহার করা হয়েছে)
                Obx(
                  () => _card(
                    "Present",
                    controller.presentCount.value,
                    Icons.check_circle,
                  ),
                ),

                Obx(
                  () => _card(
                    "Absent",
                    controller.absentCount.value,
                    Icons.cancel,
                  ),
                ),

                Obx(
                  () => _card(
                    "Departments",
                    controller.departmentCount.value,
                    Icons.apartment,
                  ),
                ),

                Obx(
                  () => _card("Salary", controller.salary.value, Icons.money),
                ),

                Obx(
                  () => _card(
                    "Projects",
                    controller.projectCount.value,
                    Icons.work,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔥 REFRESH BUTTON
            ElevatedButton(
              onPressed: controller.refreshDashboard,
              child: const Text("Refresh Dashboard"),
            ),
          ],
        ),
      ),
    );
  }

  // 🔥 NORMAL CARD (SHOW DATA)
  Widget _card(String title, dynamic value, IconData icon) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blue, size: 30),
            const SizedBox(height: 10),
            Text(
              "$value",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }

  // 🔥 CLICKABLE CARD (BUTTON STYLE)
  Widget _cardButton(String title, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.blue.shade50,
        elevation: 4,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.blue, size: 35),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
