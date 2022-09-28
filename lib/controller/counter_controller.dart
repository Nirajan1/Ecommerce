import 'package:get/get.dart';

class Myfuntion extends GetxController {
  RxInt qty = 1.obs;
  void decrement() {
    qty--;
    if (qty > 10) {
      Get.snackbar("message", "You cannot go any further.");
      qty = 10.obs;
    }
  }

  void increment() {
    qty++;
    if (qty < 1) {
      Get.snackbar("Error", "You cannot go bellow 1.");
      qty = 1.obs;
    }
  }
}
