import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/modules/detail_product/controllers/detail_product_controllers.dart';
import 'package:app_spa/modules/detail_product/widget/body_detail_product.dart';
import 'package:app_spa/modules/detail_product/widget/bottom_detail_product.dart';
import 'package:app_spa/modules/detail_product/widget/head_detail_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ViewDetailProduct extends StatelessWidget {
  const ViewDetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    DetailProductController controller = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Lottie.asset(
                'assets/lottie/105418-green-grass.json',
                width: Get.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                HeadDetailProduct(product: controller.product.value),
                Padding(
                  padding: const EdgeInsets.all(kSizeTextEdgeInsets),
                  child: BodyDetaiProduct(product: controller.product.value),
                ),
              ],
            ),
            Positioned(
              top: 20,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: kColorMain,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          0.5,
                          3,
                        ), // changes position of shadow
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/icon_back.svg',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: BottomDetailProduct(),
      ),
    );
  }
}
