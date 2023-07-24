import 'package:app_spa/model/staff.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class BookAppointmentController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var focusedDay = ''.obs;
  var format = CalendarFormat.month.obs;
  RxInt result = 0.obs;
  Rx<Staff> staff=Staff().obs;
}
