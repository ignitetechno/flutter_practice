import 'package:flutter/material.dart';
import 'package:flutter_practice/app/employee/controller/employee_controller.dart';
import 'package:flutter_practice/app/employee/routes/app_routes.dart';
import 'package:get/get.dart';

class EmployeePage extends StatelessWidget {
  EmployeePage({super.key});

  // ✅ SAFE WAY (reuse existing controller)
  final EmployeeController controller = Get.put<EmployeeController>(
    EmployeeController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Employee List")),

      body: Column(
        children: [
          // 🔍 Search
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: controller.search,
              decoration: const InputDecoration(
                hintText: 'Search Employee',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // 📋 List
          Expanded(
            child: Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                itemCount: controller.filteredList.length,

                itemBuilder: (context, index) {
                  final employee = controller.filteredList[index];

                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(employee.name),
                    subtitle: Text(employee.designation),

                    onTap: () {
                      // ✅ Select employee (GetX state)
                      controller.selectEmployee(employee);

                      // 🚀 Navigation
                      Get.toNamed(AppRoutes.employeeDetails);
                    },
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
