import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/profile/widget/dialog_confirm_exit_app.dart';
import 'package:app_spa/theme/themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomChangeTheme extends StatelessWidget {
  const BottomChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.24,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Color.fromARGB(255, 232, 232, 232),
      ),
      child: Column(
        children: [
          const AppText(
            text: "Theme",
            sizeText: kSizeTextH3,
          ),
          const Divider(
            height: 1,
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 20,
              backgroundColor: kColorMain1,
            ),
            title: const Text("Green"),
            onTap: () {
              Get.back();
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => const DialogConfirmExitApp(
                  isCheck: false,
                ),
              );
            },
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 20,
              backgroundColor: kColorMain2,
            ),
            title: const Text("Pink"),
            onTap: () {
              Get.back();
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => const DialogConfirmExitApp(
                  isCheck: true,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
