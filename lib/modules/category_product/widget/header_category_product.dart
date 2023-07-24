import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/category_product/controllers/category_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HeaderCategoryProduct extends StatelessWidget {
  const HeaderCategoryProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryProductControllers controllers = Get.find();
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        children: [
          IconButton(onPressed: () {Get.back();}, icon: const Icon(Icons.chevron_left)),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: AppText(
              text: controllers.categoryProduct.value.nameCategoryProduct!,
              sizeText: kSizeTextH4,
              maxLines: 2,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/fi-rr-search.svg",
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Lottie.asset(
                  'assets/lottie/add_cart.json',
                  width: 32,
                  height: 32,
                ),
              ),
              const Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 255, 81, 0),
                  radius: 10,
                  child: AppText(
                    text: '10',
                    sizeText: kSizeTextH6,
                    colorText: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
