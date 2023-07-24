import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_body_card_booking.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CancelledBooking extends StatelessWidget {
  const CancelledBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllers homeControllers = Get.find();
    return Obx(
      () => homeControllers.listBooking.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.zero,
              itemCount: homeControllers.listBooking.length,
              itemBuilder: ((context, index) {
                return homeControllers.listBooking[index].status == 3
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
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: kColorButtomCancel,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                        child: AppText(
                                          text: "Cancelled",
                                          colorText: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppBodyCardBooking(
                                  imageNetwork: homeControllers.listBooking[index].listService![0].listImage![0].url!,
                                  nameService: homeControllers.nameServiceUpComing(homeControllers.listBooking[index]),
                                  subPrice: "\$ ${homeControllers.subPrice(homeControllers.listBooking[index])}",
                                  isCancel: true,
                                  textLeft: "Reschedule",
                                  textRight: 'View Receipt',
                                  voidCallbackLeft: () {
                                  },
                                  voidCallbackRight: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Container();
              }),
            )
          : Container(),
    );
  }
}
