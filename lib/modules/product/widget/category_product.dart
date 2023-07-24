import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/product/controllers/product_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllers controllers = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(text: "Category", sizeText: kSizeTextH2),
        SizedBox(
          height: 250,
          width: Get.width,
          child: Card(
            child: Obx(
              () => GridView.count(
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                primary: false,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                children: controllers.listCategory.map((item) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(Routes.CATEGORYPRODUCT, arguments: item);
                    },
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              item.imageCategoryProduct!,
                              width: 64,
                            ),
                            Text(
                              item.nameCategoryProduct!,
                              textAlign: TextAlign.center,
                              textScaleFactor: kSizeTextH5,
                              style: const TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
