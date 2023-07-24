import 'dart:ui';

import 'package:app_spa/theme/themes_controller.dart';
import 'package:get/get.dart';
ThemesController themesController = Get.put(ThemesController());
Color kColorMain = themesController.isSaveDarkMode() ? kColorMain2 : kColorMain1;
const kColorMain1 = Color(0xFF00DE78);
const kColorMain2 = Color.fromARGB(255, 255, 80, 103);
const kColorBackground = Color(0xFFEEEEEE);
const kColorAppBar = Color(0xFFEEEEEE);
const kColorDollar = Color(0xFFFF5C00);
const kColorBottom = Color(0xFFFFFFFF);
const kColorButtomCancel = Color(0xFFFF3D00);
const kColorUnSelect = Color(0xFFFFFFFF);
const kColorLine = Color(0xFFDEDEDE);
const kColorLineBlack = Color.fromARGB(255, 0, 0, 0);
