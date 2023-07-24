import 'dart:async';

import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WeclomeStart extends StatefulWidget {
  const WeclomeStart({super.key});

  @override
  State<WeclomeStart> createState() => _WeclomeStartState();
}

class _WeclomeStartState extends State<WeclomeStart> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 3500),
      () {
         Get.offNamed(Routes.WECLOME );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/Spa.gif',
              fit: BoxFit.cover,
            ),
          ),
          Lottie.asset(
            'assets/lottie/sakura.json',
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
