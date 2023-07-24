import 'package:app_spa/modules/cart_product/controllers/cart_product_controllers.dart';
import 'package:get/get.dart';

class CartProductbindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartProductController>(() => CartProductController());
  }
}
