import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeControllers>(() => HomeControllers(),
        fenix: true);
  }
}