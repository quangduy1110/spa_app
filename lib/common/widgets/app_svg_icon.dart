import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvgIcon extends StatelessWidget {
  const AppSvgIcon({
    Key? key,
    required this.assetIcon,
    this.text = '',
    this.radius = 10,
    this.sizeIcon = 24,
    this.isText = true,
    this.sizeText = 20,
    this.color = Colors.black,
  }) : super(key: key);
  final String assetIcon;
  final String text;
  final double radius;
  final bool isText;
  final double sizeIcon;
  final double sizeText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: sizeIcon,
          height: sizeIcon,
          child: SvgPicture.asset(
            assetIcon,
            color: color,
          ),
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: isText,
          child: AppText(
            text: text,
            colorText: color,
            sizeText: sizeText,
          ),
        )
      ],
    );
  }
}
