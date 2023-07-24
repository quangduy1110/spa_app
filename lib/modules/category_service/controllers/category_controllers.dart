import 'package:app_spa/model/category_service.dart';
import 'package:app_spa/model/service.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryServiceController extends GetxController {
  Rx<CategoryService> categoryService = CategoryService().obs;
  RxList<Service> listService = <Service>[].obs;
  RxList<Service> listServiceByCategory = <Service>[].obs;
 
  @override
  void onInit() {
    super.onInit();
    categoryService.value = Get.arguments;
    getListServiceByCategory();
  }

  getListServiceByCategory() async {
    String response = await rootBundle.loadString('assets/json/service.json');
    listService.value = serviceFromJson(response);
    for(int i = 0 ; i < listService.length; i++){
      if(listService[i].categoryService == categoryService.value.id){
        listServiceByCategory.add(listService[i]);
      }
    }
  }
}
