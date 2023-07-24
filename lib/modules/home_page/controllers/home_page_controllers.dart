import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxInt selectedIndex = 0.obs;
  Rx<PageController> pageController = PageController().obs;

  @override
  void dispose() {
   // pageController.value.dispose();
    super.dispose();
  }
}
