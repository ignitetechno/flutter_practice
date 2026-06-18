import 'package:get/get.dart';

class HpController extends GetxController {
  var id = 1.obs;
  var name = "Arafat".obs;
  var salary = 50000.obs;

  Future<void> minus(String name, int amnt) async {
    var data = salary.value -= amnt;
    print(data);
  }

  void main() {
    HpController controller = HpController();
    controller.minus('sasa', 499);
  }
}
