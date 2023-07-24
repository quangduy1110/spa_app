import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';

class LoginBottomSignin extends StatelessWidget {
  const LoginBottomSignin({
    Key? key,
    required this.textLeft,
    required this.textRight,
    required this.voidCallback,
  }) : super(key: key);
  final String textLeft;
  final String textRight;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         AppText(
          text:textLeft,
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: voidCallback,
          child: AppText(
            text: textRight,
            sizeText: kSizeTextH2,
            colorText: kColorMain,
          ),
        )
      ],
    );
  }
}
