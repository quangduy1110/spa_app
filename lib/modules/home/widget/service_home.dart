import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/modules/home/widget/item_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceHome extends StatelessWidget {
  const ServiceHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllers controllers = Get.find();
    return Column(
      children: [
        Row(
          children: [
            const AppText(
              text: "Service",
              sizeText: 1.5,
              fontWeight: FontWeight.bold,
            ),
            const Spacer(),
            InkWell(
              onTap: () {
               // Get.toNamed(Routes.DETAILCATEGORY);
              },
              child: AppText(
                text: "See all",
                sizeText: 1.2,
                fontWeight: FontWeight.bold,
                colorText: kColorMain,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => GridView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 320,
            ),
            itemCount: controllers.listService.length,
            itemBuilder: (BuildContext context, int index) {
              return controllers.listService.isNotEmpty
                  ? ItemService(
                      service: controllers.listService[index],
                    )
                  : Container();
            },
          ),
        ),
      ],
    );
  }
}
