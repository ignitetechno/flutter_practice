import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    goNext();
  }

void goNext() async {
  await Future.delayed(const Duration(seconds: 2));

  if (Get.currentRoute != '/dashboard') {
    Get.offAllNamed('/dashboard');
  }
}
}
