import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/modules/Login/controllers/sign_up_controllers.dart';
import 'package:app_spa/modules/Login/widget/login_bottom_signin.dart';
import 'package:app_spa/modules/Login/widget/login_sign_in_body.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/img4.jpg',
              fit: BoxFit.cover,
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
                      padding: const EdgeInsets.all(10),
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
                  'Create youn \naccount',
                  textScaleFactor: kSizeTextH1,
                  style: TextStyle(
                    fontFamily: 'Niconne',
                    color: Colors.black,
                  ),
                ),
                LoginSignInBody(
                  isCheckLogin: false,
                  textButton: 'Sign Up',
                  voidCallback: () {
                    Get.toNamed(Routes.EDITPROFILE);
                  },
                  emailController: signUpController.emailController.value,
                  passwordController: signUpController.passwordController.value,
                ),
                LoginBottomSignin(
                  textLeft: 'Already have an account?',
                  textRight: '  Sign In',
                  voidCallback: () {
                    Get.offAllNamed(Routes.LOGINSIGNIN);
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
