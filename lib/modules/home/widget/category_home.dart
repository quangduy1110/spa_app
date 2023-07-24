import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllers controllers = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(text: "Category", sizeText: kSizeTextH2),
        Obx(
          () => controllers.listCategoryService.isNotEmpty
              ? SizedBox(
                  height:
                      controllers.listCategoryService.length < 4 ? 240 : 120,
                  width: Get.width,
                  child: Card(
                      child: Center(
                    child: GridView.count(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(5),
                      primary: false,
                      scrollDirection:
                          controllers.listCategoryService.length < 4
                              ? Axis.horizontal
                              : Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      crossAxisCount:
                          controllers.listCategoryService.length < 4 ? 2 : 4,
                      children: controllers.listCategoryService.map((item) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(
                              Routes.CATEGORYSERVICE,
                              arguments: item,
                            );
                          },
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(item.imageCategoryProduct!),
                                  AppText(
                                    text: item.nameCategoryProduct!,
                                    sizeText: kSizeTextH4,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )),
                )
              : Container(),
        ),
      ],
    );
  }
}
