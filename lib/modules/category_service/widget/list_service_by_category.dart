import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/category_service/controllers/category_controllers.dart';
import 'package:app_spa/modules/home/widget/item_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListServiceByCategory extends StatelessWidget {
  const ListServiceByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryServiceController controllers = Get.find();
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Obx(
          () => controllers.listServiceByCategory.isNotEmpty
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 320,
                  ),
                  itemCount: controllers.listServiceByCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return controllers.listServiceByCategory.isNotEmpty
                        ? ItemService(
                            service: controllers.listServiceByCategory[index],
                          )
                        : Container();
                  },
                )
              : const Center(
                  child: AppText(
                    text: "There are no services in this category",
                    sizeText: kSizeTextH2,
                  ),
                ),
        ),
      ),
    );
  }
}
