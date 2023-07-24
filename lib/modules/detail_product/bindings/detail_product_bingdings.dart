import 'package:app_spa/modules/detail_product/controllers/detail_product_controllers.dart';
import 'package:get/get.dart';

class DetailProductBindings extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut<DetailProductController>(() => DetailProductController());
  }
}
