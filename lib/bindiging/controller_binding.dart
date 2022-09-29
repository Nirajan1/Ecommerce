import 'package:ecommerce/controller/counter_controller.dart';
import 'package:ecommerce/controller/product_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Myfuntion());
    Get.put(ProductController());
  }
}
