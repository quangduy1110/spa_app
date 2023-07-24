import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/product/controllers/product_controllers.dart';
import 'package:app_spa/modules/product/widget/item_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllers controllers = Get.put(ProductControllers());
    return Column(
      children: [
        Row(
          children: [
            const AppText(
              text: "Product",
              sizeText: kSizeTextH2,
              fontWeight: FontWeight.bold,
            ),
            const Spacer(),
            AppText(
              text: "See all",
              sizeText: kSizeTextH4,
              colorText: kColorMain,
            ),
          ],
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
            itemCount: controllers.listProduct.length,
            itemBuilder: (BuildContext context, int index) {
              return controllers.listProduct.isNotEmpty
                  ? ItemProduct(
                      product: controllers.listProduct[index],
                    )
                  : Container();
            },
          ),
        ),
      ],
    );
  }
}
