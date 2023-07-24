import 'package:app_spa/modules/booking/controllers/booking_controllers.dart';
import 'package:get/get.dart';

class BookingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookingController>(() => BookingController());
  }
}