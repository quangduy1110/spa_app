import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HeaderProdcut extends StatelessWidget {
  const HeaderProdcut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/icon_logo.svg",
            width: 48,
          ),
          const SizedBox(
            width: 10,
          ),
          const AppText(
            text: "Spa",
            sizeText: kSizeTextH1,
            fontFamily: 'Niconne',
            fontWeight: FontWeight.w300,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/fi-rr-search.svg",
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (){
              Get.toNamed(Routes.CARTPRODUCT);
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Lottie.asset(
                    'assets/lottie/add_cart.json',
                    width: 32,
                    height: 32,
                  ),
                ),
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 81, 0),
                    radius: 10,
                    child: AppText(
                      text: '10',
                      sizeText: kSizeTextH6,
                      colorText: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
