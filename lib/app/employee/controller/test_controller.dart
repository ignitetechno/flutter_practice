import 'package:get/get.dart';

class TestController extends GetxController {
  // .obs ব্যবহারের মাধ্যমে ভ্যারিয়েবলটিকে রিঅ্যাক্টিভ (Observable) করা হয়েছে
  var testValue = 0.obs;

  // বিজনেস লজিক বা ভ্যালু আপডেট করার মেথড
  void increaseTestValue() {
    testValue.value += 10;
  }
}
