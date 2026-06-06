import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.business, size: 100, color: Colors.white),

            const SizedBox(height: 20),

            const Text(
              "HRMS SYSTEM",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
