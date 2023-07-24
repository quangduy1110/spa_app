import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/book_appointment/controllers/bool_apppointment_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class BookAppointmentSelectDate extends StatelessWidget {
  const BookAppointmentSelectDate({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final BookAppointmentController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const AppText(
          sizeText: kSizeTextH2,
          text: 'Select Date',
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(kSizeTextEdgeInsets),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(
                  0.5,
                  3,
                ), // changes position of shadow
              ),
            ],
          ),
          child: Obx(
            () => TableCalendar(
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(
                  fontSize: Get.width * 0.05,
                  fontFamily: 'Nunito',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
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
      ],
    );
  }
}
