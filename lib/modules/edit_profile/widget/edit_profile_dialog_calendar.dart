import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/edit_profile/controllers/edit_profile_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class EditProfileDialogCalendar extends StatelessWidget {
  const EditProfileDialogCalendar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final EditProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        elevation: 8,
        content: Container(
          width: Get.width - 30,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaleFactor: 1),
                  child: TableCalendar(
                    headerStyle: const HeaderStyle(
                      titleTextStyle: TextStyle(
                        fontFamily: 'Nunito',
                        color: Colors.black,
                      ),
                    ),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    calendarFormat: controller.format.value,
                    onFormatChanged: (format) {
                      controller.format.value = format;
                    },
                    focusedDay: controller.selectedDate.value,
                    onDaySelected: (selectedDay, focusedDay) {
                      controller.selectedDate.value = selectedDay;
                    },
                    selectedDayPredicate: (day) {
                      return isSameDay(controller.selectedDate.value, day);
                    },
                    calendarStyle: CalendarStyle(
                      isTodayHighlighted: false,
                      selectedDecoration: BoxDecoration(
                        color: kColorMain,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.focusedDay.value = DateFormat("dd-MM-yyyy")
                          .format(controller.selectedDate.value)
                          .toString();
                      Get.back();
                    },
                    child: AppText(
                      text: 'Ok',
                      sizeText: kSizeTextH2,
                      colorText: kColorMain,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const AppText(
                      text: 'Cancel',
                      sizeText: kSizeTextH2,
                      colorText: Colors.blue,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
