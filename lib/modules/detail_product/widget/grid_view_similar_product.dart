import 'package:app_spa/model/product.dart';
import 'package:app_spa/modules/detail_product/controllers/detail_product_controllers.dart';
import 'package:app_spa/modules/product/widget/item_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridViewSimilarProduct extends StatelessWidget {
  const GridViewSimilarProduct({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    DetailProductController controllers = Get.find();
    return Obx(
      () => controllers.listSimilarProduct.isNotEmpty
          ? GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 320,
              ),
              itemCount: controllers.listSimilarProduct.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemProduct(
                  product: controllers.listSimilarProduct[index],
                );
              },
            )
          : Container(),
    );
  }
}
