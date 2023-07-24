import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_header.dart';
import 'package:app_spa/modules/home/widget/category_home.dart';
import 'package:app_spa/modules/home/widget/outstanding_service_home.dart';
import 'package:app_spa/modules/home/widget/outstanding_staff_home.dart';
import 'package:app_spa/modules/home/widget/service_home.dart';
import 'package:app_spa/modules/home/widget/slider_image_home.dart';
import 'package:app_spa/modules/home/widget/upcoming_home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Lottie.asset('assets/lottie/65470-cherry-flowers.json'),
            ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: AppHeader(
                    text: 'Spa',
                    svgLeft: 'assets/icons/icon_logo.svg',
                    sizeIcon: 48,
                    svgRight: 'assets/icons/ic_bell.svg',
                    colorIconRight: kColorMain,
                    isCheckIconRight: true,
                  ),
                ),
                const SizedBox(height: 10),
                const SliderImageHome(),
                Container(
                  padding: const EdgeInsets.all(kSizeTextEdgeInsets),
                  child: Column(
                    children: const [
                      CategoryHome(),
                      SizedBox(height: 10),
                      UpcomingHome(),
                      SizedBox(height: 10),
                      OutstandingStaffHome(),
                      SizedBox(height: 10),
                      OutstandingServiceHome(),
                      SizedBox(height: 10),
                      ServiceHome(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
