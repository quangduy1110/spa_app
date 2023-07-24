import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home_page/controllers/home_page_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

Future<String?> reviewSummaryDialogSuccessful(
  BuildContext context,
  HomePageController homePageController,
) {
  return showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      elevation: 8,
      content: Container(
        width: Get.width - 30,
        padding: EdgeInsets.all(Get.width * 0.1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/lottie/check-green.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
              repeat: false,
            ),
            AppText(
              text: 'Payment Successful!',
              sizeText: kSizeTextH3,
              fontFamily: 'Niconne',
              fontWeight: FontWeight.w100,
              colorText: kColorMain,
            ),
            const SizedBox(height: 20),
            const AppText(
              text: 'Your booking has been successfully done',
              sizeText: kSizeTextH4,
              isCheckTextAlignCenter: true,
            ),
            const SizedBox(height: 20),
            AppButton(
              textButton: 'View E-Receipt',
              sizeText: kSizeTextH2,
              voidCallback: () {
                Get.toNamed(Routes.HOMEPAGE);
                homePageController.selectedIndex.value = 2;
              },
              isCheckSvg: false,
              colorButton: kColorMain,
              colorText: Colors.white,
              fontWeight: FontWeight.w100,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.offAllNamed(Routes.HOMEPAGE);
              },
              child: AppText(
                text: 'Go Home',
                sizeText: kSizeTextH4,
                fontWeight: FontWeight.w100,
                colorText: kColorMain,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
