import 'package:app_spa/modules/category_service/controllers/category_controllers.dart';
import 'package:get/get.dart';

class CategoryServiceBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryServiceController>(() => CategoryServiceController());
  }
}
