import 'package:app_spa/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.voidCallback,
    required this.textButton,
    this.svg = '',
    this.isCheckSvg = true,
    this.fontFamily = 'Nunito',
    required this.sizeText,
    this.colorButton = Colors.white,
    required this.colorText,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);
  final VoidCallback voidCallback;
  final String textButton;
  final String svg;
  final bool isCheckSvg;
  final String fontFamily;
  final double sizeText;
  final Color colorButton;
  final Color colorText;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: voidCallback,
      child: Container(
        width: Get.width,
        padding: EdgeInsets.all(Get.width * 0.025),
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(
                0.5,
                3,
              ), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isCheckSvg,
              child: Row(
                children: [
                  SvgPicture.asset(
                    svg,
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Text(
              textButton,
              textScaleFactor: sizeText,
              style: TextStyle(
                fontFamily: fontFamily,
                color: colorText,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
