import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_service.dart';

class OutstandingServiceHome extends StatelessWidget {
  const OutstandingServiceHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllers controllers = Get.find();
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    return Column(
      children: [
        Row(
          children: [
            MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(textScaleFactor: kSizeTextH2),
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Outstanding Service',
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                    ),
                    speed: const Duration(milliseconds: 600),
                    colors: colorizeColors,
                  ),
                ],
                pause: const Duration(milliseconds: 620),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.OUTSTANDINGSERVICE);
              },
              child: AppText(
                text: "See all",
                sizeText: kSizeTextH4,
                fontWeight: FontWeight.bold,
                colorText: kColorMain,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 320,
          child: Obx(
            () => ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: controllers.listService.length,
              itemBuilder: (context, index) {
                return controllers.listService[index].isOutstanding == 1
                    ? ItemService(
                        service: controllers.listService[index],
                      )
                    : Container();
              },
            ),
          ),
        )
      ],
    );
  }
}
