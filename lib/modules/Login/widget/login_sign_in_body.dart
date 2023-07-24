import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/Login/widget/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSignInBody extends StatelessWidget {
  const LoginSignInBody({
    Key? key,
    required this.textButton,
    required this.voidCallback,
    this.isCheckLogin = true,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);
  final String textButton;
  final VoidCallback voidCallback;
  final bool isCheckLogin;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        LoginTextField(
          assetIcon: 'assets/icons/icon_email.svg',
          textHint: 'Email',
          textEditingController: emailController,
        ),
        const SizedBox(
          height: 20,
        ),
        LoginTextField(
          assetIcon: 'assets/icons/icon_lock.svg',
          textHint: 'Password',
          isCheckPassword: true,
          textEditingController: passwordController,
        ),
        const SizedBox(
          height: 60,
        ),
        AppButton(
          voidCallback: voidCallback,
          textButton: textButton,
          isCheckSvg: false,
          sizeText: kSizeTextH2,
          colorButton: kColorMain,
          colorText: Colors.white,
          fontWeight: FontWeight.w100,
        ),
        const SizedBox(
          height: 20,
        ),
        Visibility(
          visible: isCheckLogin,
          child: Align(
            alignment: Alignment.center,
            child: AppText(
              text: 'Forgot the password?',
              colorText: kColorMain,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.center,
          child: AppText(
            text: 'Or continue with',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/facebook.svg',
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 20),
            SvgPicture.asset(
              'assets/icons/google.svg',
              width: 32,
              height: 32,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
