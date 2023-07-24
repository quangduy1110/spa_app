import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditProfileBotton extends StatelessWidget {
  const EditProfileBotton({
    Key? key,
    required this.voidCallback,
    required this.textButton,
    required this.svg,
  }) : super(key: key);
  final VoidCallback voidCallback;
  final String textButton;
  final String svg;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10,
          bottom: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(
                0.5,
                3,
              ),
            ),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
              width: 24,
              height: 24,
              color: Colors.black87,
            ),
            const SizedBox(width: 10),
            AppText(
              text: textButton,
              sizeText: kSizeTextH2,
              fontWeight: FontWeight.w200,
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/icons/icon-angle-right.svg',
              width: 16,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
