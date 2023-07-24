import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconSvgHome extends StatelessWidget {
  const IconSvgHome({
    Key? key,
    required this.assetIcon,
    this.text = '',
    this.radius = 10,
    this.sizeIcon = 24,
    this.sizeText = 20,
  }) : super(key: key);
  final String assetIcon;
  final String text;
  final double radius;
  final double sizeIcon;
  final double sizeText;
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
          ),
        ),
        const SizedBox(height: 10),
        AppText(
          text: text,
          sizeText: sizeText,
        )
      ],
    );
  }
}
