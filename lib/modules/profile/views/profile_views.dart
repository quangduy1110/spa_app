import 'package:app_spa/common/widgets/app_header.dart';
import 'package:app_spa/modules/profile/widget/bottom_change_theme.dart';
import 'package:app_spa/modules/profile/widget/edit_profile_botton.dart';
import 'package:app_spa/modules/profile/widget/information_profile_personal.dart';
import 'package:app_spa/modules/profile/widget/logout_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.all(Get.width * 0.06),
          children: [
            const AppHeader(
              text: 'Spa',
              svgLeft: 'assets/icons/icon_logo.svg',
              sizeIcon: 48,
            ),
            const SizedBox(height: 20),
            const ProfilePersonalInformation(),
            const SizedBox(height: 40),
            Column(
              children: [
                const SizedBox(height: 10),
                EditProfileBotton(
                  voidCallback: () {},
                  svg: 'assets/icons/ic_profile.svg',
                  textButton: 'Edit profile',
                ),
                const SizedBox(height: 20),
                EditProfileBotton(
                  voidCallback: () {},
                  svg: 'assets/icons/ic_bell.svg',
                  textButton: 'Notification',
                ),
                const SizedBox(height: 20),
                EditProfileBotton(
                  voidCallback: () {},
                  svg: 'assets/icons/icon-credit-card.svg',
                  textButton: 'Payment',
                ),
                const SizedBox(height: 10),
                EditProfileBotton(
                  voidCallback: () {
                    Get.bottomSheet(const BottomChangeTheme());
                  },
                  svg: 'assets/icons/ic_paintbrush.svg',
                  textButton: 'Theme',
                ),
                const SizedBox(height: 10),
              ],
            ),
            const LogoutProfile()
          ],
        ),
      ),
    );
  }
}
