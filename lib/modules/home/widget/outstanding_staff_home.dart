import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/modules/home/widget/bottom_sheet_staff.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutstandingStaffHome extends StatelessWidget {
  const OutstandingStaffHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllers controllers = Get.find();
    return Obx(() {
      if (controllers.listStaff.isNotEmpty) {
        return Column(
          children: [
            Row(
              children: [
                const AppText(
                  text: "Outstanding Staff",
                  sizeText: kSizeTextH2,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.bottomSheet(const BottomSheetStaff());
                  },
                  child: AppText(
                    text: "See all",
                    sizeText: kSizeTextH4,
                    colorText: kColorMain,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Obx(
                          () => CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                              controllers.listStaff[index].imageStaff!,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => AppText(
                                text: controllers.listStaff[index].nameStaff!,
                                sizeText: kSizeTextH4,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Obx(
                              () => AppText(
                                text: controllers.listStaff[index].position!,
                                sizeText: kSizeTextH5,
                                colorText: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Obx(
                          () => AppText(
                            text:
                                "${controllers.listStaff[index].subPlaced} Order",
                            sizeText: kSizeTextH4,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        );
      } else {
        return Container();
      }
    });
  }
}
