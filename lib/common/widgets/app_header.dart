import 'package:app_spa/common/theme/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
    required this.text,
    required this.svgLeft,
    this.isCheckBack = false,
    this.svgRight = '',
    this.isCheckIconRight = false,
    this.sizeIcon = 24,
    this.colorIconRight = Colors.black54,
  }) : super(key: key);
  final String text;
  final String svgLeft;
  final String svgRight;
  final bool isCheckBack;
  final bool isCheckIconRight;
  final double sizeIcon;
  final Color colorIconRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        InkWell(
          child: SvgPicture.asset(
            svgLeft,
            width: sizeIcon,
            height: sizeIcon,
          ),
          onTap: () {
            isCheckBack ? Get.back() : Container();
          },
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          textScaleFactor: kSizeTextH7,
          style: const TextStyle(
            fontFamily: 'Niconne',
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Visibility(
          visible: isCheckIconRight,
          child: SvgPicture.asset(
            svgRight,
            width: 24,
            height: 24,
            color: colorIconRight,
          ),
        ),
      ],
    );
  }
}
