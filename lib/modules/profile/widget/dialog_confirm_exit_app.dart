import 'dart:async';
import 'dart:io';

import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/profile/widget/botton_dialog_profile.dart';
import 'package:app_spa/theme/themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogConfirmExitApp extends StatelessWidget {
  const DialogConfirmExitApp({super.key, required this.isCheck});
  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    ThemesController themesController = Get.put(ThemesController());

    return Center(
      child: AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 8),
        contentPadding: EdgeInsets.zero,
        content: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppText(
                text: 'Notification',
                sizeText: kSizeTextH3,
                colorText: Colors.red,
              ),
              const SizedBox(height: 20),
              const AppText(
                text: 'Do you want to change the theme ?',
                sizeText: kSizeTextH4,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottonDialogProfile(
                    text: 'No',
                    voidCallback: () {
                      Get.back();
                    },
                    buttomColor: Colors.red,
                    textColor: Colors.white,
                  ),
                  const SizedBox(width: 20),
                  BottonDialogProfile(
                    text: 'Yes',
                    voidCallback: () {
                      themesController.saveThemeMode(isCheck);
                      Timer(
                        const Duration(milliseconds: 200),
                        () {
                          exit(0);
                        },
                      );
                      // exit(0);
                    },
                    buttomColor: kColorMain,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
