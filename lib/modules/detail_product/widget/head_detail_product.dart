import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/model/product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HeadDetailProduct extends StatelessWidget {
  const HeadDetailProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: Get.width * 0.6,
        autoPlay: true,
        viewportFraction: 1.0,
      ),
      items: product.imageProduct!
          .map(
            (item) => Center(
              child: Image.network(
                 item.url!,
                fit: BoxFit.cover,
              ),
            ),
          )
          .toList(),
    );
  }
}
