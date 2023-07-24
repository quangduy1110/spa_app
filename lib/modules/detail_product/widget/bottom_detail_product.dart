import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class BottomDetailProduct extends StatelessWidget {
  const BottomDetailProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kColorMain,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(
                0.5,
                3,
              ), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/add_cart_white.json',
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 10),
            const AppText(
              text: 'Add',
              sizeText: 1,
              colorText: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
