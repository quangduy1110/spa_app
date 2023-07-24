import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/edit_profile/controllers/edit_profile_controllers.dart';
import 'package:app_spa/modules/edit_profile/widget/edit_profile_dialog_calendar.dart';
import 'package:app_spa/modules/edit_profile/widget/edit_profile_dropdown_gender.dart';
import 'package:app_spa/modules/edit_profile/widget/edit_profile_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final EditProfileController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipOval(
              child: SvgPicture.asset(
                'assets/icons/user.svg',
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              top: 75,
              right: 0,
              child: SvgPicture.asset(
                'assets/icons/icon_camera.svg',
                width: 24,
                height: 24,
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        const EditProfileTextField(
          textHint: 'Full Name',
        ),
        const SizedBox(height: 20),
        const EditProfileTextField(
          textHint: 'Nickname',
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 4,
            bottom: 4,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0.5, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Obx(
                () => AppText(
                  text: controller.focusedDay.value.isEmpty
                      ? 'Date of Birth'
                      : controller.focusedDay.value,
                  sizeText: kSizeTextH4,
                  fontWeight: FontWeight.w100,
                  colorText: controller.focusedDay.value.isEmpty
                      ? Colors.black54
                      : Colors.black,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => EditProfileDialogCalendar(
                    controller: controller,
                  ),
                ),
                icon: SvgPicture.asset(
                  'assets/icons/icon-calendar.svg',
                  width: 24,
                  height: 24,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        const EditProfileTextField(
          textHint: 'Email',
          assetIcon: 'assets/icons/icon_email.svg',
          isCheckIcon: true,
        ),
        const SizedBox(height: 20),
        const EditProfileTextField(
          textHint: 'Phone Number',
          assetIcon: 'assets/icons/icon-phone-call.svg',
          isCheckIcon: true,
        ),
        const SizedBox(height: 20),
        const EditProfileDropdownGender(),
        const SizedBox(height: 40),
        AppButton(
          voidCallback: () {},
          textButton: 'Continue',
          isCheckSvg: false,
          fontFamily: 'Niconne',
          sizeText:2,
          colorButton: kColorMain,
          colorText: Colors.white,
          fontWeight: FontWeight.w100,
        ),
      ],
    );
  }
}
