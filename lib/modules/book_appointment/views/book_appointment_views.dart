import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_header.dart';
import 'package:app_spa/modules/book_appointment/controllers/bool_apppointment_controllers.dart';
import 'package:app_spa/modules/book_appointment/widget/note_book_appointemnt.dart';
import 'package:app_spa/modules/book_appointment/widget/selec_hours_book_appointemnt.dart';
import 'package:app_spa/modules/book_appointment/widget/select_specialist_book_appointemnt.dart';
import 'package:app_spa/modules/book_appointment/widget/select_date_book_appointemnt.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    BookAppointmentController controller = Get.find();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(kSizeTextEdgeInsets),
          children: [
            const AppHeader(
              text: 'Book Appointment',
              svgLeft: 'assets/icons/icon_back.svg',
              isCheckBack: true,
              sizeIcon: 16,
              
            ),
            BookAppointmentSelectDate(controller: controller),
            BookAppointmentSelectHours(controller: controller),
            const BookAppointmentSelectSpecialist(),
            const BookAppointmentNote(),
            const SizedBox(height: 20),
            AppButton(
              textButton: 'Continue',
              sizeText: kSizeTextH2,
              voidCallback: () {
                Get.toNamed(Routes.REVIEWSUMMARY, arguments: true);
              },
              isCheckSvg: false,
              colorButton: kColorMain,
              colorText: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
