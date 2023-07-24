import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/edit_profile/controllers/edit_profile_controllers.dart';
import 'package:app_spa/modules/edit_profile/widget/edit_profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    EditProfileController controller = Get.find();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          primary: false,
          shrinkWrap: true,
          padding: const EdgeInsets.all(kSizeTextEdgeInsets),
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/icons/icon_back.svg',
                    ),
                  ),
                ),
                const AppText(
                  text: 'Fill You Profile',
                  sizeText:kSizeTextH3,
                  fontFamily: 'Niconne',
                  fontWeight: FontWeight.w100,
                ),
              ],
            ),
            const SizedBox(height: 20),
            EditProfileBody(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
