import 'package:app_spa/model/category_product.dart';
import 'package:app_spa/model/product.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryProductControllers extends GetxController {
  Rx<CategoryProduct> categoryProduct = CategoryProduct().obs;
  RxList<Product> listProduct = <Product>[].obs;
  RxList<Product> listProductByCategory = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    categoryProduct.value = Get.arguments;
    getListProductByCategory();
  }

  getListProductByCategory() async {
    String response = await rootBundle.loadString('assets/json/product.json');
    listProduct.value = productFromJson(response);
    for(int i = 0 ; i < listProduct.length; i++){
      if(listProduct[i].categoryProduct == categoryProduct.value.id){
        listProductByCategory.add(listProduct[i]);
      }
    }
  }
}
