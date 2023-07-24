import 'package:app_spa/model/product.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DetailProductController extends GetxController {
  Rx<Product> product = Product().obs;
  RxList<Product> listSimilarProduct = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    product.value = Get.arguments;
    getListSimilarProduct();
  }

  getListSimilarProduct() async {
    String response = await rootBundle.loadString('assets/json/product.json');
    listSimilarProduct.value = productFromJson(response);
  }

}
