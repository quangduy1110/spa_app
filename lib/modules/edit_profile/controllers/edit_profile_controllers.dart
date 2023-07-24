import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class EditProfileController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var focusedDay =''.obs;
  var format=CalendarFormat.month.obs;

}
