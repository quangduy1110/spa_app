import 'package:get/get.dart';

class AccompanyingServicesController extends GetxController{
  RxList<int> listSelect = <int>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  selectService(int index){
    listSelect.add(index);
  }

  unSelectService(int index){
    listSelect.remove(index);
  }

  bool checkSelect(int index){
    for(int i = 0; i < listSelect.length; i++){
      if(listSelect[i] == index){
        return true;
      }
    }
    return false;
  }
}