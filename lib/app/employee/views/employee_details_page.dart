import 'package:flutter/material.dart';
import 'package:flutter_practice/app/employee/controller/employee_controller.dart';
import 'package:get/get.dart';

class EmployeeDetailsPage extends StatelessWidget {
  EmployeeDetailsPage({super.key});

  final EmployeeController controller = Get.find<EmployeeController>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // ❌ physical back disable

      onPopInvokedWithResult: (didPop, result) {
        // physical back press handle
      },

      child: Scaffold(
        appBar: AppBar(
          title: const Text("Employee Details"),

          // ✅ AppBar back manually enable
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),

            onPressed: () {
              Get.back(); // ✔️ only appbar back works
            },
          ),
        ),

        body: Center(
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ID : ${controller.selectedEmployee.value.id}"),
                Text("Name : ${controller.selectedEmployee.value.name}"),
                Text(
                  "Designation : ${controller.selectedEmployee.value.designation}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
