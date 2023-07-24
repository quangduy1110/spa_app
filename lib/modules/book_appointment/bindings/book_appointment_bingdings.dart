import 'package:app_spa/modules/book_appointment/controllers/bool_apppointment_controllers.dart';
import 'package:get/get.dart';

class BookAppointmentBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookAppointmentController>(() => BookAppointmentController());
  }
}
