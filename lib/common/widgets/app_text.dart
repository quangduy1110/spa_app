import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.text,
    this.sizeText = 1,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w600,
    this.fontFamily = 'Nunito',
    this.maxLines = 20000,
    this.isCheckTextAlignCenter = false,
  }) : super(key: key);
  final String text;
  final double sizeText;
  final Color colorText;
  final FontWeight fontWeight;
  final String fontFamily;
  final int maxLines;
  final bool isCheckTextAlignCenter;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: sizeText,
      textAlign: isCheckTextAlignCenter ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        fontFamily: fontFamily,
        color: colorText,
        fontWeight: fontWeight,
      ),
    );
  }
}
