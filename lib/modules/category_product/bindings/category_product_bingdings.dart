import 'package:app_spa/modules/category_product/controllers/category_product_controller.dart';
import 'package:get/get.dart';

class CategoryProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryProductControllers>(() => CategoryProductControllers(),
        fenix: true);
  }
}