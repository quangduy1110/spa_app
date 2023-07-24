import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/category_service/controllers/category_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderServiceCategory extends StatelessWidget {
  const HeaderServiceCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryServiceController controller = Get.find();
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        AppText(
          text: controller.categoryService.value.nameCategoryProduct!,
          sizeText: kSizeTextH2,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
