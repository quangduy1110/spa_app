import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/category_product/controllers/category_product_controller.dart';
import 'package:app_spa/modules/product/widget/item_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoryProduct extends StatelessWidget {
  const ListCategoryProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryProductControllers controllers = Get.find();
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Obx(
          () => controllers.listProductByCategory.isNotEmpty
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 320,
                  ),
                  itemCount: controllers.listProductByCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return controllers.listProductByCategory.isNotEmpty
                        ? ItemProduct(
                            product: controllers.listProductByCategory[index],
                          )
                        : Container();
                  },
                )
              : const Center(
                  child: AppText(
                    text: "There are no products in this category",
                    sizeText: kSizeTextH2,
                  ),
                ),
        ),
      ),
    );
  }
}
