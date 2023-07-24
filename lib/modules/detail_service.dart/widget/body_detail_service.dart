import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_dialog_img.dart';
import 'package:app_spa/common/widgets/app_svg_icon.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/detail_service.dart/controllers/detail_service_controllers.dart';
import 'package:app_spa/modules/detail_service.dart/widget/item_comment.dart';
import 'package:app_spa/modules/edit_profile/widget/edit_profile_dialog_calendar.dart';
import 'package:app_spa/modules/home/widget/icon_svg_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class BodyDetailService extends StatelessWidget {
  const BodyDetailService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailServiceController controllers = Get.find();
    return Obx(
      () => controllers.service.value.nameService!.isNotEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: controllers.service.value.nameService!,
                  sizeText: kSizeTextH2,
                ),
                Row(
                  children: [
                    const AppSvgIcon(
                      assetIcon: "assets/icons/ic_star.svg",
                      isText: false,
                      sizeIcon: 24,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AppText(
                      text: controllers.service.value.rate!.toString(),
                      sizeText: kSizeTextH2,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AppText(
                      text: "\$ ${controllers.service.value.price}",
                      sizeText: kSizeTextH2,
                      fontWeight: FontWeight.bold,
                      colorText: const Color.fromARGB(255, 255, 102, 0),
                    ),
                    const Spacer(),
                    const IconSvgHome(
                      assetIcon: "assets/icons/ic_location.svg",
                      text: "Location",
                      sizeIcon: 24,
                      radius: 100,
                      sizeText: kSizeTextH5,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const IconSvgHome(
                      assetIcon: "assets/icons/ic_send.svg",
                      text: "Share",
                      sizeIcon: 24,
                      radius: 100,
                      sizeText: kSizeTextH5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AppSvgIcon(
                      assetIcon: "assets/icons/ic_location.svg",
                      isText: false,
                      color: kColorMain,
                    ),
                    AppText(
                      text: controllers.service.value.address!,
                      sizeText: kSizeTextH4,
                      fontWeight: FontWeight.w100,
                      colorText: kColorMain,
                    )
                  ],
                ),
                const AppText(
                  text: "Working Hours :",
                  sizeText: kSizeTextH2,
                ),
                const SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: controllers.service.value.listTime!.length,
                  itemBuilder: (context, index) {
                    return AppText(
                      text:
                          "${controllers.service.value.listTime![index].star} - ${controllers.service.value.listTime![index].end}:  ${controllers.service.value.listTime![index].timeStar} - ${controllers.service.value.listTime![index].timeEnd}",
                      sizeText: kSizeTextH4,
                      colorText: Colors.orange,
                    );
                  },
                ),
                const AppText(
                  text: "Highlights :",
                  sizeText: kSizeTextH2,
                ),
                const AppText(
                  text:
                      "- Located at the busy street at 81 Thai Ha - Dong Da - Hanoi, H+ Beauty Spa is the ideal stop for women who love beauty and health care services.\n- H+ Beauty Spa provides a variety of services such as: body massage, basic to intensive skin care, skin rejuvenation, hair removal...\n- The spa is equipped with a system of modern and advanced machines combined with genuine cosmetic lines to ensure that customers get the desired results.\n- A team of skilled, well-trained staff and technicians to serve customers with enthusiasm and dedication. :",
                  sizeText: kSizeTextH4,
                  colorText: Colors.black87,
                  fontWeight: FontWeight.w100,
                ),
                const AppText(
                  text: "Details :",
                  sizeText: kSizeTextH2,
                ),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: controllers.service.value.listIntroduce!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        AppText(
                          text: controllers
                              .service.value.listIntroduce![index].content!,
                          sizeText: kSizeTextH4,
                          fontWeight: FontWeight.w300,
                          colorText: Colors.black87,
                        ),
                        Visibility(
                          visible: controllers.service.value
                                  .listIntroduce![index].image!.isEmpty
                              ? false
                              : true,
                          child: InkWell(
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AppDialogImg(
                                image: controllers
                                    .service.value.listIntroduce![index].image!,
                              ),
                            ),
                            child: Image.network(
                              controllers
                                  .service.value.listIntroduce![index].image!,
                              width: Get.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const AppText(
                  text: "Comment :",
                  sizeText: kSizeTextH2,
                ),
                AppText(
                  text:
                      "(${NumberFormat.decimalPattern('hi').format(controllers.service.value.listReview!.length)} review)",
                  sizeText: kSizeTextH4,
                  colorText: const Color.fromARGB(255, 255, 81, 0),
                ),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: controllers.service.value.listReview!.length,
                  itemBuilder: ((context, index) {
                    return ItemComment(
                      comment: controllers.service.value.listReview![index],
                    );
                  }),
                ),
              ],
            )
          : Container(),
    );
  }
}
