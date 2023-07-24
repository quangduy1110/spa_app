import 'package:app_spa/modules/category_product/widget/header_category_product.dart';
import 'package:app_spa/modules/category_product/widget/list_category_product.dart';
import 'package:flutter/material.dart';

class CategoryProductView extends StatelessWidget {
  const CategoryProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            HeaderCategoryProduct(),
            ListCategoryProduct(),
          ],
        ),
      )),
    );
  }
}