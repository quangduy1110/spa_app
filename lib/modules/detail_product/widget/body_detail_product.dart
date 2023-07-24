import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/detail_product/widget/grid_view_similar_product.dart';
import 'package:app_spa/modules/detail_product/widget/list_view_product_information.dart';
import 'package:flutter/material.dart';

import '../../../model/product.dart';

class BodyDetaiProduct extends StatelessWidget {
  const BodyDetaiProduct({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: product.nameProduct!,
          sizeText: kSizeTextH4,
        ),
        AppText(
          text: 'Total: \$ ${product.price!}',
          sizeText: kSizeTextH2,
          colorText: const Color.fromARGB(255, 255, 81, 0),
        ),
        const AppText(
          text: 'Detail information of product :',
          sizeText: kSizeTextH4,
        ),
        AppText(
          text:
              'Quantity: ${product.quantity} \nCode: ${product.idProduct} \nBrand: ${product.trademark} \nBrand Origin: ${product.origin} \nPlace of Origin: ${product.madeIn} \nCapacity: ${product.capacity} \nSkin type: ${product.skinType} \nFeatures: ${product.characteristic} \nGender: ${product.sex} \nSkin problems: ${product.skinProblems}',
          sizeText: kSizeTextH4,
          fontWeight: FontWeight.w400,
          colorText: Colors.black87,
        ),
        const AppText(
          text: 'Product information :',
          sizeText: kSizeTextH2,
        ),
        ListViewProductInformation(productInformation: product.productInformation!,),
        const Divider(
          height: 20,
          thickness: 1,
          endIndent: 10,
          indent: 10,
          color: Colors.black54,
        ),
        const AppText(text: 'Similar Product', sizeText: kSizeTextH2),
        GridViewSimilarProduct(product: product),
      ],
    );
  }
}
