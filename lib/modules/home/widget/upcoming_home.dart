import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_body_card_booking.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home_page/controllers/home_page_controllers.dart';
import 'package:app_spa/modules/booking/widget/dialog_confirm_cancel.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class UpcomingHome extends StatelessWidget {
  const UpcomingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllers homeControllers = Get.find();
    HomePageController homePageController = Get.find();
    return Obx(() {
      if (homeControllers.listBooking.isNotEmpty) {
        return Column(
          children: [
            Row(
              children: [
                const AppText(text: "Upcoming", sizeText: kSizeTextH2),
                const Spacer(),
                InkWell(
                  onTap: () {
                    homePageController.selectedIndex.value = 2;
                  },
                  child: AppText(
                    text: "See all",
                    sizeText: kSizeTextH4,
                    colorText: kColorMain,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Obx(
                          () => AppText(
                            text: homeControllers.convertDateTime(
                              homeControllers
                                  .listBooking[
                                      homeControllers.indexFirstUpComing.value]
                                  .time!,
                            ),
                            sizeText: kSizeTextH5,
                          ),
                        ),
                        const Spacer(),
                        const AppText(
                          text: "Remind me ",
                          sizeText: kSizeTextH5,
                          colorText: Colors.black54,
                        ),
                        const SizedBox(width: 10),
                        Obx(
                          () => FlutterSwitch(
                            width: 32,
                            height: 20,
                            toggleSize: 15,
                            activeColor: kColorMain,
                            inactiveColor: kColorLine,
                            value: homeControllers
                                .listBooking[
                                    homeControllers.indexFirstUpComing.value]
                                .isRemid!,
                            borderRadius: 30.0,
                            onToggle: (val) {
                              homeControllers
                                  .listBooking[
                                      homeControllers.indexFirstUpComing.value]
                                  .isRemid = val;
                              homeControllers.listBooking.refresh();
                            },
                          ),
                        ),
                      ],
                    ),
                    Obx(() {
                      return AppBodyCardBooking(
                        imageNetwork: homeControllers
                            .listBooking[
                                homeControllers.indexFirstUpComing.value]
                            .listService![0]
                            .listImage![0]
                            .url!,
                        nameService: homeControllers.nameServiceUpComing(
                            homeControllers.listBooking[
                                homeControllers.indexFirstUpComing.value]),
                        subPrice: "\$ ${homeControllers
                            .subPrice(homeControllers.listBooking[
                                homeControllers.indexFirstUpComing.value])}",
                        textLeft: "Cancel",
                        textRight: 'View Receipt',
                        voidCallbackLeft: () {
                          Get.bottomSheet(
                            DialogConfirmCancel(
                              idBooking: homeControllers
                                  .listBooking[
                                      homeControllers.indexFirstUpComing.value]
                                  .idBooking!,bookContext: context,
                            ),
                          );
                        },
                        voidCallbackRight: () {
                          Get.toNamed(Routes.REVIEWSUMMARY, arguments: false);
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        );
      } else {
        return Container();
      }
    });
  }
}
