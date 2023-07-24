import 'dart:async';

import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 2500),
      () {
         Get.offNamed(Routes.LOGINLEFSYOUIN);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/img1.jpeg',
              fit: BoxFit.cover,
            ),
            const Expanded(
              flex: 2,
              child: AppText(
                text: 'Welcome to \nour Spa service',
                fontFamily: 'Niconne',
                sizeText: kSizeTextH1,
                isCheckTextAlignCenter: true,
                fontWeight: FontWeight.w500,
              ),
            ),
            const AppText(
              text: 'Thank you for your interest in our \ntranslation',
              fontFamily: 'Niconne',
              isCheckTextAlignCenter: true,
              sizeText: kSizeTextH3,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
