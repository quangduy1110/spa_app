import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_header.dart';
import 'package:app_spa/modules/home_page/controllers/home_page_controllers.dart';
import 'package:app_spa/modules/review_summary/controllers/review_summary_controllers.dart';
import 'package:app_spa/modules/review_summary/widget/review_summar_payment_information.dart';
import 'package:app_spa/modules/review_summary/widget/review_summary_dialog_successful.dart';
import 'package:app_spa/modules/review_summary/widget/review_summary_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewSummaryView extends StatelessWidget {
  const ReviewSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.find();
    ReviewSummaryController reviewSummaryController = Get.find();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(kSizeTextEdgeInsets),
          children: [
            const AppHeader(
              text: 'Review Summary',
              svgLeft: 'assets/icons/icon_back.svg',
              isCheckBack: true,
              sizeIcon: 16,
            ),
            const SizedBox(height: 20),
            const ReviewSummaryInformation(),
            const SizedBox(height: 40),
            const ReviewSummaryPaymentInformation(),
            const SizedBox(height: 20),
            Visibility(
              visible: reviewSummaryController.checkVisibilityButton.value,
              child: AppButton(
                textButton: 'Continue Payment',
                sizeText: kSizeTextH2,
                voidCallback: () {
                  reviewSummaryDialogSuccessful(context, homePageController);
                },
                isCheckSvg: false,
                colorButton: kColorMain,
                colorText: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
