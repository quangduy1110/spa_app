import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/modules/home/widget/item_staff.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetStaff extends StatelessWidget {
  const BottomSheetStaff({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllers controllers = Get.find();
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: kColorBottom,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          Align(
            alignment: Alignment.center,
            child: AppText(
              text: "List Staff",
              sizeText: kSizeTextH3,
              colorText: kColorMain,
            ),
          ),
          const SizedBox(height: 10),
          Obx(
            () => controllers.listStaff.isNotEmpty?ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: controllers.listStaff.length,
              itemBuilder: (context, index) {
                return ItemStaff(staff: controllers.listStaff[index]);
              },
            ):Container(),
          ),
        ],
      ),
    );
  }
}
