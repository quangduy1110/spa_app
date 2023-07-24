import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemesController extends GetxController {
  final _getStorage = GetStorage();
  final storageKey = 'isDarkMode';

  ThemeMode getThemeMode() {
    return isSaveDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isSaveDarkMode() {
    return _getStorage.read(storageKey) ?? false;
  }

   saveThemeMode(bool isDarkMode)  {
    _getStorage.write(storageKey, isDarkMode);
  }

  changeThemeMode(bool check) {
    if (isSaveDarkMode() == check) {
    } else {
      Get.changeThemeMode(isSaveDarkMode() ? ThemeMode.light : ThemeMode.dark);
      saveThemeMode(!isSaveDarkMode());
    }
  }
}
