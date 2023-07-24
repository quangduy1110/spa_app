import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginLefsYouHead extends StatelessWidget {
  const LoginLefsYouHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SvgPicture.asset(
        'assets/icons/logo_spa.svg',
        width: 240,
      ),
    );
  }
}
