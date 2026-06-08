import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/storage_controller.dart';

class StoragePage extends StatelessWidget {
  StoragePage({super.key});

  final StorageController controller = Get.find<StorageController>();

  final TextEditingController txtName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive Test"),
        backgroundColor: const Color.fromARGB(255, 106, 118, 214),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: txtName,
              decoration: const InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                controller.saveData(txtName.text);
              },
              child: const Text("Save"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: controller.clearData,
              child: const Text("Clear"),
            ),

            const SizedBox(height: 30),

            Obx(
              () => Text(
                "Saved Name: ${controller.userName.value}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
