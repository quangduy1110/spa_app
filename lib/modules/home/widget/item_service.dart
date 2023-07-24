import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/model/service.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:app_spa/theme/themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ItemService extends StatelessWidget {
  final Service service;
  const ItemService({Key? key, required this.service}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.DETAILSERVICE, arguments: service);
      },
      child: Card(
        child: SizedBox(
          width: 180,
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  service.listImage![0].url!,
                  width: 180,
                  height: 160,
                  fit: BoxFit.cover,
                ),
                AppText(
                  text: service.nameService!,
                  sizeText: kSizeTextH4,
                  maxLines: 2,
                ),
                const Spacer(),
                AppText(
                  text: service.listIntroduce![0].content!,
                  sizeText: kSizeTextH5,
                  maxLines: 2,
                  colorText: Colors.black54,
                ),
                Row(
                  children: [
                    AppText(
                      text: "\$ ${service.price}",
                      sizeText: kSizeTextH4,
                      colorText: kColorDollar,
                    ),
                    const Spacer(),
                    Lottie.asset(
                      themesController.isSaveDarkMode()
                          ? 'assets/lottie/add_cart_2.json'
                          : 'assets/lottie/add_cart.json',
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
