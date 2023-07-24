import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomDetailService extends StatelessWidget {
  const BottomDetailService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: Get.width,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: kColorMain,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/ic_chat.svg",
                width: Get.width*0.05,
              ),
              const AppText(
                text: "Message",
                sizeText: kSizeTextH5,
                colorText: kColorBottom,
              )
            ],
          ),
          SizedBox(width: Get.width * 0.05),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/ic_call.svg",
                width: Get.width*0.05,
              ),
              const AppText(
                text: "Call",
                sizeText: kSizeTextH5,
                colorText: kColorBottom,
              )
            ],
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: (() {
              Get.toNamed(Routes.ACCOMPANYINGSERVICES);
            }),
            child: Container(
              width: Get.width*0.55,
              decoration: BoxDecoration(
                  color: kColorBottom, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: AppText(
                  text: "Book Now",
                  sizeText: kSizeTextH2,
                  colorText: kColorMain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
