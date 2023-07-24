import 'package:app_spa/modules/Login/controllers/sign_in_controllers.dart';
import 'package:app_spa/modules/Login/controllers/sign_up_controllers.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
