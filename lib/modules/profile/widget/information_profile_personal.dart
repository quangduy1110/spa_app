import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfilePersonalInformation extends StatelessWidget {
  const ProfilePersonalInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: SvgPicture.asset(
            'assets/icons/user.svg',
            width: 100,
            height: 100,
          ),
        ),
        const SizedBox(height: 20),
        const AppText(
          text: 'Daniel Austin',
          sizeText: kSizeTextH3,
        ),
        const AppText(
          text: 'danielaustin@gmail.com',
          sizeText: kSizeTextH2,
          fontWeight: FontWeight.w200,
        ),
      ],
    );
  }
}
