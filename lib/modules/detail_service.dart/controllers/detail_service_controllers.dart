import 'package:app_spa/model/service.dart';
import 'package:get/get.dart';

class DetailServiceController extends GetxController {
  Rx<Service> service = Service().obs;

  @override
  void onInit() {
    super.onInit();
    service.value = Get.arguments;
  }
}
