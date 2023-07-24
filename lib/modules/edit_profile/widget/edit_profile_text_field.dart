import 'package:app_spa/common/theme/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditProfileTextField extends StatelessWidget {
  const EditProfileTextField({
    Key? key,
    required this.textHint,
    this.assetIcon = '',
    this.isCheckIcon = false,
  }) : super(key: key);
  final String textHint;
  final String assetIcon;
  final bool isCheckIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
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
        maxLength: 40,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: kSizeTextField,
          fontFamily: 'Nunito',
          color: Colors.black,
          fontWeight: FontWeight.w100,
        ),
        decoration: InputDecoration(
          suffixIcon: Visibility(
            visible: isCheckIcon,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SvgPicture.asset(assetIcon),
            ),
          ),
          counterText: '',
          border: InputBorder.none,
          hintText: textHint,
        ),
      ),
    );
  }
}
