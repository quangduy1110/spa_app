import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBodyCardBooking extends StatelessWidget {
  const AppBodyCardBooking({
    Key? key,
    required this.voidCallbackLeft,
    required this.voidCallbackRight,
    required this.textLeft,
    required this.textRight,
    this.imageNetwork = '',
    this.nameService = '',
    this.subPrice = '',
    this.isCancel = false
  }) : super(key: key);
  final String textLeft;
  final String textRight;
  final String imageNetwork;
  final String nameService;
  final String subPrice;
  final VoidCallback voidCallbackLeft;
  final VoidCallback voidCallbackRight;
  final bool isCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 5,
          ),
          child: const Divider(
            color: kColorLine,
            height: 1,
          ),
        ),
        Row(
          children: [
            Image.network(
              imageNetwork,
              width: 128,
              height: 128,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: nameService,
                    sizeText: kSizeTextH4,
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                  ),
                  AppText(
                    text: "$subPrice",
                    sizeText: kSizeTextH2,
                    colorText: kColorDollar,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        isCancel == false? Row(
          children: [
            ElevatedButton(
              onPressed: voidCallbackLeft,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(color: kColorMain),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize:
                    MaterialStateProperty.all<Size>(Size(Get.width * 0.43, 48)),
              ),
              child: AppText(
                text: textLeft,
                sizeText: kSizeTextH2,
                colorText: kColorMain,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: voidCallbackRight,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(kColorMain),
                minimumSize:
                    MaterialStateProperty.all<Size>(Size(Get.width * 0.43, 48)),
              ),
              child: AppText(
                text: textRight,
                sizeText: kSizeTextH2,
                colorText: Colors.white,
              ),
            ),
          ],
        ):Container(),
      ],
    );
  }
}
