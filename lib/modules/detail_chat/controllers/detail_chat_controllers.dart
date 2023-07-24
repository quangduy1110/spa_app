import 'package:app_spa/model/chat.dart';
import 'package:get/get.dart';

class DetailChatController extends GetxController {
  Rx<Chat> chats = Chat().obs;

  @override
  void onInit() {
    super.onInit();
    chats.value = Get.arguments;
  }
}

