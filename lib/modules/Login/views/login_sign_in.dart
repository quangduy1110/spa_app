import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/modules/Login/controllers/sign_in_controllers.dart';
import 'package:app_spa/modules/Login/widget/login_bottom_signin.dart';
import 'package:app_spa/modules/Login/widget/login_sign_in_body.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginSignIn extends StatelessWidget {
  const LoginSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/img2.jpg',
              fit: BoxFit.fitHeight,
              height: Get.height,
            ),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              primary: false,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/icon_back.svg',
                        width: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login to your \naccount',
                  textScaleFactor: kSizeTextH1,
                  style: TextStyle(
                    fontFamily: 'Niconne',
                    color: Colors.black,
                  ),
                ),
                LoginSignInBody(
                  textButton: 'Sign In',
                  voidCallback: () {
                    Get.offAllNamed(Routes.HOMEPAGE);
                  },
                  emailController: signInController.emailController.value,
                  passwordController: signInController.emailController.value,
                ),
                LoginBottomSignin(
                  textLeft: 'Don\'t have an account ?',
                  textRight: '  Sign Up',
                  voidCallback: () {
                    Get.toNamed(Routes.LOGINSIGNUP);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
