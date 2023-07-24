import 'package:app_spa/modules/category_service/widget/header_service_category.dart';
import 'package:app_spa/modules/category_service/widget/list_service_by_category.dart';
import 'package:flutter/material.dart';

class CategoryServiceView extends StatelessWidget {
  const CategoryServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            HeaderServiceCategory(),
            ListServiceByCategory(),
          ],
        ),
      )),
    );
  }
}
