import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_practice/app/employee/controller/pay_controller.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});

  PayController get controller => Get.find<PayController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay Page"),

        backgroundColor: const Color.fromARGB(255, 106, 118, 214),

        centerTitle: true,

        elevation: 5,

        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              controller.increaseSalary();
            },
          ),

          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Get.snackbar(
                "Pay Info",
                "Salary management screen",
                snackPosition: SnackPosition.BOTTOM,
              );
            },
          ),
        ],

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),

      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Salary : ${controller.salary.value}",
                style: const TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: controller.increaseSalary,
                child: const Text("Increase Salary"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
