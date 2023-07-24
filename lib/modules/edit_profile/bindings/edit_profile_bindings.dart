import 'package:app_spa/modules/edit_profile/controllers/edit_profile_controllers.dart';
import 'package:get/get.dart';

class EditProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(() => EditProfileController());
  }
}
