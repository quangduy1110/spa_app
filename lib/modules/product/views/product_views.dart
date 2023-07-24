import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/modules/product/widget/beauty_trends.dart';
import 'package:app_spa/modules/product/widget/category_product.dart';
import 'package:app_spa/modules/product/widget/featured_products.dart';
import 'package:app_spa/modules/product/widget/flash_sale_product.dart';
import 'package:app_spa/modules/product/widget/header_product.dart';
import 'package:app_spa/modules/product/widget/list_product.dart';
import 'package:app_spa/modules/product/widget/slider_image_product.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Lottie.asset('assets/lottie/65470-cherry-flowers.json'),
            ListView(
              shrinkWrap: true,
              children: [
                const HeaderProdcut(),
                const SliderImageProduct(),
                Padding(
                  padding: const EdgeInsets.all(kSizeTextEdgeInsets),
                  child: Column(
                    children: const [
                      FlashSaleProduct(),
                      CategoryProduct(),
                      BeautyTrendsProduct(),
                      FeaturedProduct(),
                      ListProduct(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
