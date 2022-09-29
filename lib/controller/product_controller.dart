import 'package:ecommerce/service/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = [].obs;
  var isLoading = false.obs;
  Future getProducts() async {
    try {
      isLoading(true);
      var data = await ProductService.fetchProduct();
      if (data != null) {
        products.value = data;
      }
    } catch (e) {
      Get.snackbar("error", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }
}
