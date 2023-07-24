import 'package:app_spa/model/category_product.dart';
import 'package:app_spa/model/image_slider.dart';
import 'package:app_spa/model/product.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductControllers extends GetxController {
  RxInt indexImage = 0.obs;
  RxList<ImageSlider> listSliderImage = <ImageSlider>[].obs;
  RxList<CategoryProduct> listCategory = <CategoryProduct>[].obs;
  RxList<Product> listProduct = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    getListSliderImage();
    getListCategoryProduct();
    getListProduct();
  }

  getListSliderImage() async{
    String response = await rootBundle.loadString('assets/json/slider_product.json');
    listSliderImage.value = imageSliderFromJson(response);
  }

  getListCategoryProduct() async{
    String response = await rootBundle.loadString('assets/json/category_product.json');
    listCategory.value = categoryProductFromJson(response);
  }

  getListProduct() async {
    String response = await rootBundle.loadString('assets/json/product.json');
    listProduct.value = productFromJson(response);
  }

  num promotionalPrice(int price, int endow, int category) {
    if(category == 1){
      return price - price * (endow * 0.01);
    }
    if(category == 2){
      return price - endow;
    }
    return 0;
  }

  double progressFlashSale(int bought, int limit) {
    return bought/limit;
  }
}
