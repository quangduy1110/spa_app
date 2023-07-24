import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/booking/widget/dialog_successful_cancel.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogConfirmCancel extends StatelessWidget {
  const DialogConfirmCancel(
      {Key? key, required this.idBooking, required this.bookContext})
      : super(key: key);
  final int idBooking;
  final BuildContext bookContext;
  @override
  Widget build(BuildContext context) {
    HomeControllers homeControllers = Get.find();
    return Container(
      decoration: const BoxDecoration(
        color: kColorBottom,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      height: 250,
      width: Get.width,
      padding: const EdgeInsets.all(kSizeTextEdgeInsets),
      child: Column(
        children: [
          const AppText(
            text: "Cancel Booking",
            sizeText: kSizeTextH3,
            colorText: kColorButtomCancel,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: const Divider(
              color: kColorLine,
              height: 1,
            ),
          ),
          const AppText(
              text: "Are you sure want to cancel \nyour barber/salon booking?",
              sizeText: kSizeTextH2),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 50,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: kColorMain),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                        child: AppText(
                      text: "Cancel",
                      sizeText: kSizeTextH4,
                      colorText: kColorMain,
                    )),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.back();
                    homeControllers.listBooking
                        .firstWhere((item) => item.idBooking == idBooking)
                        .status = 3;
                    homeControllers.listBooking.refresh();
                    dialogSuccessfulCancel(bookContext);
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 5),
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        color: kColorMain),
                    child: const Center(
                      child: AppText(
                        text: "Yes, Cancel Booking",
                        sizeText: kSizeTextH4,
                        colorText: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
