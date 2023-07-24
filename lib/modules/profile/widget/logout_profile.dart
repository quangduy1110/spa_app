import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/profile/widget/botton_dialog_profile.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LogoutProfile extends StatelessWidget {
  const LogoutProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          Get.bottomSheet(
            Container(
              height:230,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const AppText(
                    text: 'Logout',
                    sizeText:kSizeTextH3,
                    colorText: Colors.red,
                  ),
                  const SizedBox(height: 20),
                  const AppText(
                    text: 'Are you sure you want to log out ?',
                    sizeText: kSizeTextH4,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottonDialogProfile(
                        text: 'Cancel',
                        voidCallback: () {
                          Get.back();
                        },
                        buttomColor: Colors.red,
                        textColor: Colors.white,
                      ),
                      BottonDialogProfile(
                        text: 'Yes, Logout',
                        voidCallback: () {
                          Get.offAllNamed(Routes.LOGINLEFSYOUIN);
                        },
                        buttomColor: kColorMain,
                        textColor: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/sign-out-alt_icon.svg',
            ),
            const SizedBox(width: 10),
            const AppText(
              text: 'Logout',
              sizeText: 1.5,
              colorText: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
