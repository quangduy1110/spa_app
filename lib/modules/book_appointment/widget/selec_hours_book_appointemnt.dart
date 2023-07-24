
import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/book_appointment/controllers/bool_apppointment_controllers.dart';
import 'package:app_spa/modules/book_appointment/uitls/book_appointment_uitls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookAppointmentSelectHours extends StatelessWidget {
  const BookAppointmentSelectHours({
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
          text: 'Select Hours',
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(height: 20),
        GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: EdgeInsets.zero,
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: (1 / .4),
          children: List.generate(
            listTime.length,
            (index) => Obx(
              () => Container(
                padding: const EdgeInsets.all(kSizeTextEdgeInsets),
                decoration: BoxDecoration(
                  color: index != controller.result.value
                      ? Colors.white
                      : kColorMain,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                  border: Border.all(color: kColorMain),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      controller.result.value = index;
                    },
                    child: AppText(
                      sizeText: kSizeTextH4,
                      text: listTime[index],
                      colorText: index == controller.result.value
                          ? Colors.white
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

