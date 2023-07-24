import 'package:app_spa/modules/review_summary/controllers/review_summary_controllers.dart';
import 'package:get/get.dart';

class ReviewSummaryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReviewSummaryController>(() => ReviewSummaryController());
  }
}
