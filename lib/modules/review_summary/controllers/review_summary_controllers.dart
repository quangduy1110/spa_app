import 'package:get/get.dart';

class ReviewSummaryController extends GetxController {
  RxBool checkVisibilityButton = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkVisibilityButton.value = Get.arguments;
  }
}
