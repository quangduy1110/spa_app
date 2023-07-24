import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/model/staff.dart';
import 'package:app_spa/modules/book_appointment/controllers/bool_apppointment_controllers.dart';
import 'package:app_spa/modules/home/widget/item_staff.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'bottom_sheet_staff_book_appointemnt.dart';

class BookAppointmentSelectSpecialist extends StatelessWidget {
  const BookAppointmentSelectSpecialist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BookAppointmentController controller = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            const AppText(
              sizeText: kSizeTextH2,
              text: 'Select Specialist',
              fontWeight: FontWeight.w400,
            ),
            const Spacer(),
            Obx(
              () => controller.staff.value.nameStaff != null
                  ? InkWell(
                      onTap: () {
                        controller.staff.value = Staff();
                      },
                      child: const AppText(
                        sizeText: kSizeTextH4,
                        text: 'Delete',
                        fontWeight: FontWeight.w400,
                        colorText: Colors.red,
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Obx(
          () => controller.staff.value.nameStaff == null
              ? InkWell(
                  onTap: () {
                    Get.bottomSheet(const BottomSheetStaffBookAppointemnt());
                  },
                  child: DottedBorder(
                    color: Colors.black54,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset('assets/lottie/add-user.json',
                              width: 64),
                          const SizedBox(width: 20),
                          MediaQuery(
                            data: MediaQuery.of(context)
                                .copyWith(textScaleFactor: kSizeTextH2),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                WavyAnimatedText(
                                  'Add Personnel',
                                  textStyle: TextStyle(
                                    fontFamily: 'Nunito',
                                    color: kColorMain,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                              onTap: () {
                                Get.bottomSheet(
                                  const BottomSheetStaffBookAppointemnt(),
                                );
                              },
                              totalRepeatCount: 200000,
                              isRepeatingAnimation: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : ItemStaff(staff: controller.staff.value),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
