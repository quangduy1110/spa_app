import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/modules/detail_service.dart/widget/bottom_detail_service.dart';
import 'package:app_spa/modules/detail_service.dart/widget/header_detail_service.dart';
import 'package:app_spa/modules/detail_service.dart/widget/body_detail_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DetailServiceView extends StatelessWidget {
  const DetailServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: const [
                HeaderDetailService(),
                Padding(
                  padding: EdgeInsets.all(kSizeTextEdgeInsets),
                  child: BodyDetailService(),
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
      bottomNavigationBar: const BottomDetailService(),
    );
  }
}
