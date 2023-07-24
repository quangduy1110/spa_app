import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_body_card_booking.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/booking/widget/dialog_confirm_cancel.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class UpcomingBooking extends StatelessWidget {
  const UpcomingBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllers homeControllers = Get.find();
    return Obx(() => homeControllers.listBooking.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.zero,
            itemCount: homeControllers.listBooking.length,
            itemBuilder: ((context, index) {
              return homeControllers.listBooking[index].status == 1
                  ? Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  AppText(
                                    text: homeControllers.convertDateTime(homeControllers.listBooking[index].time!),
                                    sizeText: kSizeTextH4,
                                  ),
                                  const Spacer(),
                                  const AppText(
                                    text: "Remind me ",
                                    sizeText: kSizeTextH5,
                                  ),
                                  Obx(
                                    (() => FlutterSwitch(
                                          width: 32,
                                          height: 20,
                                          toggleSize: 15,
                                          activeColor: kColorMain,
                                          inactiveColor: kColorLine,
                                          value: homeControllers.listBooking[index].isRemid!,
                                          borderRadius: 30.0,
                                          onToggle: (val) {
                                            homeControllers.listBooking[index].isRemid = val;
                                            homeControllers.listBooking.refresh();
                                          },
                                        )),
                                  ),
                                ],
                              ),
                              AppBodyCardBooking(
                                imageNetwork: homeControllers.listBooking[index].listService![0].listImage![0].url!,
                                nameService: homeControllers.nameServiceUpComing(homeControllers.listBooking[index]),
                                subPrice: "\$ ${homeControllers.subPrice(homeControllers.listBooking[index])}",
                                textLeft: "Cancel",
                                textRight: 'View Receipt',
                                voidCallbackLeft: () {
                                  Get.bottomSheet(
                                    DialogConfirmCancel(
                                      idBooking: homeControllers.listBooking[index].idBooking!,
                                      bookContext: context,
                                    ),
                                  );
                                },
                                voidCallbackRight: () {
                                  Get.toNamed(Routes.REVIEWSUMMARY, arguments: false);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container();
            }),
          )
        : Container());
  }
}
