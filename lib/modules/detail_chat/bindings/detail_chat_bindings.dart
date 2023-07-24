import 'package:app_spa/modules/detail_chat/controllers/detail_chat_controllers.dart';
import 'package:get/get.dart';

class DetailChatBindings extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut<DetailChatController>(() => DetailChatController());
  }
}

