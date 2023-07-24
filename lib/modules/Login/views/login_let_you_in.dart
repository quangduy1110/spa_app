import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/Login/widget/login_bottom_signin.dart';
import 'package:app_spa/modules/Login/widget/login_lefs_you_head.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginLefsYouIn extends StatelessWidget {
  const LoginLefsYouIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset(
            'assets/lottie/sakura.json',
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(Get.width * 0.1),
              child: Column(
                children: [
                  const LoginLefsYouHead(),
                  const Text(
                    'Let you in',
                    textScaleFactor: kSizeTextH1,
                    style: TextStyle(
                      fontFamily: 'Niconne',
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(flex: 1),
                  AppButton(
                    textButton: 'Continue with Facebook',
                    svg: 'assets/icons/facebook.svg',
                    voidCallback: () {},
                    sizeText: kSizeTextH2,
                    fontWeight: FontWeight.w100,
                    colorText: kColorMain,
                  ),
                  const Spacer(flex: 1),
                  AppButton(
                    textButton: 'Continue with Google',
                    svg: 'assets/icons/google.svg',
                    voidCallback: () {},
                    sizeText: kSizeTextH2,
                    fontWeight: FontWeight.w100,
                    colorText: kColorMain,
                  ),
                  const Spacer(flex: 2),
                  const AppText(
                    text: 'Or',
                  ),
                  const Spacer(flex: 2),
                  AppButton(
                    voidCallback: () {
                      Get.toNamed(Routes.LOGINSIGNIN);
                    },
                    textButton: 'Sign in',
                    isCheckSvg: false,
                    sizeText: kSizeTextH2,
                    colorButton: kColorMain,
                    colorText: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(height: 10),
                  AppButton(
                    voidCallback: () {
                      Get.toNamed(Routes.HOMEPAGE);
                    },
                    textButton: 'Guest',
                    isCheckSvg: false,
                    sizeText: kSizeTextH2,
                    colorButton: const Color.fromARGB(255, 255, 94, 0),
                    colorText: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(flex: 2),
                  LoginBottomSignin(
                    textLeft: 'Don\'t have an account ?',
                    textRight: 'Sign Up',
                    voidCallback: () {
                      Get.toNamed(Routes.LOGINSIGNUP);
                    },
                  ),
                  const Spacer(flex: 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
