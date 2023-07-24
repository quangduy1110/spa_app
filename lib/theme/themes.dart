import 'package:app_spa/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData greenThemeData() {
    return ThemeData.light().copyWith(
      primaryColor: kColorMain,
      //scaffoldBackgroundColor: kColorMain1,
    );
  }

  static ThemeData pinkThemeData() {
    return ThemeData.light().copyWith(
      primaryColor: kColorMain2,
      //scaffoldBackgroundColor: kColorMain2,
    );
  }
}
