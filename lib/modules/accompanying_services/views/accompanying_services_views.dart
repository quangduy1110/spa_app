import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/accompanying_services/widget/accompanying_services_body.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccompanyingServicesView extends StatelessWidget {
  const AccompanyingServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const AppText(
              text: "Accompanying Services",
              sizeText: kSizeTextH4,
            ),
          ],
        ),
      ),
      body: const AccompanyingServicesBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: AppButton(
          textButton: 'Book Now - \$ 199',
          sizeText: kSizeTextH2,
          voidCallback: () {
            Get.toNamed(Routes.BOOKAPPOINTMENT);
          },
          isCheckSvg: false,
          colorButton: kColorMain,
          colorText: Colors.white,
        ),
      ),
    );
  }
}
