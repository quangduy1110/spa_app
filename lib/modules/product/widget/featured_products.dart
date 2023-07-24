import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/product/controllers/product_controllers.dart';
import 'package:app_spa/modules/product/widget/item_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllers controllers = Get.put(ProductControllers());
    return Column(
      children: [
        Row(
          children: [
            const AppText(
              text: "Featured Product",
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
        SizedBox(
          height: 320,
          child: Obx(
            () => ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: controllers.listProduct.length,
              itemBuilder: (context, index) {
                return controllers.listProduct.isNotEmpty
                    ?controllers.listProduct[index].isFeatured==1?  ItemProduct(
                        product: controllers.listProduct[index],
                      ):Container()
                    : Container();
              },
            ),
          ),
        )
      ],
    );
  }
}
