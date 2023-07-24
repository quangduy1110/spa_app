import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:app_spa/modules/accompanying_services/controllers/accompanying_services_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccompanyingServicesBody extends StatelessWidget {
  const AccompanyingServicesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AccompanyingServicesController controller =
        Get.put(AccompanyingServicesController());
    HomeControllers homeControllers = Get.find();
    return Container(
      padding: const EdgeInsets.all(kSizeTextEdgeInsets),
      child: Obx(
        () => homeControllers.listService.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: homeControllers.listService.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      controller.checkSelect(index)
                          ? controller.unSelectService(index)
                          : controller.selectService(index);
                    },
                    child: Obx(
                      () => Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kColorUnSelect,
                          border: Border.all(
                            width: 1,
                            color: controller.checkSelect(index)
                                ? kColorMain
                                : kColorUnSelect,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    homeControllers
                                        .listService[index].listImage![0].url!,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: homeControllers
                                      .listService[index].nameService!,
                                  sizeText: kSizeTextH4,
                                  fontWeight: FontWeight.bold,
                                ),
                                Row(
                                  children: [
                                    const AppText(
                                        text: "Only from ",
                                        sizeText: kSizeTextH4),
                                    AppText(
                                      text:
                                          "\$ ${homeControllers.listService[index].price}",
                                      sizeText: kSizeTextH5,
                                      colorText: kColorDollar,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Get.toNamed(
                                  Routes.DETAILSERVICE,
                                  arguments: homeControllers.listService[index],
                                );
                              },
                              icon: const Icon(Icons.chevron_right),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            : Container(),
      ),
    );
  }
}
