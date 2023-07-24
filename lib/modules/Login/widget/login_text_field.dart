import 'package:app_spa/common/theme/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    required this.assetIcon,
    this.isCheckPassword = false,
    required this.textHint,
    required this.textEditingController,
  }) : super(key: key);
  final String assetIcon;
  final bool isCheckPassword;
  final String textHint;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0.5, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        controller: textEditingController,
        obscureText: isCheckPassword,
        maxLength: 40,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: kSizeTextField,
          fontFamily: 'Nunito',
          color: Colors.black,
          fontWeight: FontWeight.w100,
        ),
        decoration: InputDecoration(
          icon: SvgPicture.asset(
            assetIcon,
            height: 24,
            width: 24,
          ),
          counterText: '',
          border: InputBorder.none,
          hintText: textHint,
        ),
      ),
    );
  }
}
