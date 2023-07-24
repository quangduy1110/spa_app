import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottonDialogProfile extends StatelessWidget {
  const BottonDialogProfile({
    Key? key,
    required this.voidCallback,
    required this.text,
    required this.textColor,
    required this.buttomColor,
  }) : super(key: key);
  final VoidCallback voidCallback;
  final String text;
  final Color textColor;
  final Color buttomColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: voidCallback,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttomColor,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(Get.width / 2.5, 50),
      ),
      child: AppText(
        text: text,
        sizeText:kSizeTextH5,
        colorText: textColor,
      ),
    );
  }
}
