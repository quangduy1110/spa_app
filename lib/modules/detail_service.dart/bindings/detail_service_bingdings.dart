import 'package:app_spa/modules/detail_service.dart/controllers/detail_service_controllers.dart';
import 'package:get/get.dart';

class DetailServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailServiceController>(() => DetailServiceController(),
        fenix: true);
  }
}