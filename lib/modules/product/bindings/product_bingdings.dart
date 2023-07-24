import 'package:app_spa/modules/product/controllers/product_controllers.dart';
import 'package:get/get.dart';

class Productbindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductControllers>(() => ProductControllers());
  }
}
