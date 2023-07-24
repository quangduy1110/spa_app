import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_button.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CartProductView extends StatelessWidget {
  const CartProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.all(Get.width * 0.05),
          children: [
            Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/icons/icon_back.svg'),
                  onPressed: () {},
                ),
                const AppText(text: 'Your Order', sizeText: kSizeTextH2),
                const Spacer(),
                Stack(
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
              ],
            ),
            const SizedBox(height: 10),
            const AppText(
              text: 'Delivery address information:',
              sizeText: kSizeTextH2,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: 'Vu Xuan thien',
                        sizeText: kSizeTextH4,
                      ),
                      AppText(
                        text: '28/105 Doãn Kế THiện, Cầu Giấy, Hà Nội ',
                        sizeText: kSizeTextH4,
                        maxLines: 2,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: AppText(
                      text: 'Edit',
                      sizeText: kSizeTextH4,
                      colorText: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 20, thickness: 2, endIndent: 10, indent: 10),
            const AppText(text: 'List Product', sizeText: kSizeTextH4),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                    child: Row(
                      children: [
                        Image.network(
                          'https://piger.vn/wp-content/uploads/2022/07/diesel-loverdose-piger.vn_.jpg',
                          width: 89,
                          height: 89,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AppText(
                                text: 'Chanel N5 EDP Perfume',
                                sizeText: kSizeTextH4,
                                maxLines: 1,
                              ),
                              AppText(
                                text: 'Chanel N5 EDP Perfume',
                                sizeText: kSizeTextH4,
                                fontWeight: FontWeight.w400,
                                maxLines: 2,
                              ),
                              AppText(
                                text: '\$ 100',
                                sizeText: kSizeTextH4,
                                colorText: Color.fromARGB(255, 255, 81, 0),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              child: SvgPicture.asset(
                                'assets/icons/icon_delete.svg',
                                width: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                InkWell(
                                  child: SvgPicture.asset(
                                    'assets/icons/icon_reduce.svg',
                                    width: 12,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const AppText(text: '1', sizeText: kSizeTextH4),
                                const SizedBox(width: 10),
                                InkWell(
                                  child: SvgPicture.asset(
                                    'assets/icons/icon_add.svg',
                                    width: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            const Divider(height: 20, thickness: 2, endIndent: 10, indent: 10),
            AppText(text: 'Your Bill', sizeText: kSizeTextH4),
            Row(
              children: const [
                AppText(
                  text: 'Subtotal',
                  sizeText: kSizeTextH4,
                  colorText: Colors.black54,
                ),
                Spacer(),
                AppText(
                  text: '\$ 100',
                  sizeText: kSizeTextH4,
                  colorText: Color.fromARGB(255, 255, 81, 0),
                ),
              ],
            ),
            Row(
              children: const [
                AppText(
                  text: 'Total',
                  sizeText: kSizeTextH4,
                  colorText: Colors.black54,
                ),
                Spacer(),
                AppText(
                  text: '\$ 100',
                  sizeText: kSizeTextH4,
                  colorText: Color.fromARGB(255, 255, 81, 0),
                ),
              ],
            ),
            const Divider(height: 20, thickness: 2, endIndent: 10, indent: 10),
            Row(
              children: [
                AppText(
                  text: 'Delivery',
                  sizeText: kSizeTextH4,
                  colorText: Colors.black54,
                ),
                const Spacer(),
                AppText(
                  text: '\$ 100',
                  sizeText: kSizeTextH4,
                  colorText: const Color.fromARGB(255, 255, 81, 0),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
              textButton: 'Book Now - \$199',
              sizeText: kSizeTextH4,
              voidCallback: () {},
              isCheckSvg: false,
              colorButton: kColorMain,
              colorText: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
