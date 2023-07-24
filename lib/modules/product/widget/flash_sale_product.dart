import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/product/controllers/product_controllers.dart';
import 'package:app_spa/modules/product/widget/item_flash_sale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_countdown/slide_countdown.dart';

class FlashSaleProduct extends StatelessWidget {
  const FlashSaleProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllers controllers = Get.put(ProductControllers());
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
                    'Flash Sale',
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                    ),
                    speed: const Duration(milliseconds: 200),
                    colors: colorizeColors,
                  ),
                ],
                totalRepeatCount: 200000,
                pause: const Duration(milliseconds: 220),
                isRepeatingAnimation: true,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(textScaleFactor: kSizeTextH5),
              child: const SlideCountdownSeparated(
                width: 24,
                duration: Duration(hours: 2),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                textStyle: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            AppText(
              text: "See all",
              sizeText: kSizeTextH4,
              colorText: kColorMain,
            ),
          ],
        ),
        SizedBox(
          height: 320,
          child: Obx(
            () => ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: controllers.listProduct.length,
              itemBuilder: (context, index) {
                return controllers.listProduct.isNotEmpty
                    ? controllers.listProduct[index].endow?.categoryEndow != 0
                        ? ItemFlashSale(
                            product: controllers.listProduct[index],
                          )
                        : Container()
                    : Container();
              },
            ),
          ),
        )
      ],
    );
  }
}
