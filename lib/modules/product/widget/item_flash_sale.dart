import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/model/product.dart';
import 'package:app_spa/modules/product/controllers/product_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ItemFlashSale extends StatelessWidget {
  final Product product;
  const ItemFlashSale({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllers controllers = Get.find();
    return Card(
      child: SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  product.imageProduct![0].url!,
                  width: 180,
                  height: 155,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: -30,
                  top: -35,
                  child:
                      Lottie.asset('assets/lottie/52717-fire.json', width: 120),
                ),
                Positioned(
                  right: 14,
                  top: 45,
                  child: AppText(
                    text: product.endow!.categoryEndow == 1
                        ? "-${product.endow!.endow}%"
                        : "-\$ ${product.endow!.endow}",
                    sizeText: kSizeTextH5,
                    colorText: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: AppText(
                text: product.nameProduct!,
                sizeText: kSizeTextH4,
                maxLines: 2,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: AppText(
                text: product.productInformation![0].content!,
                sizeText: kSizeTextH5,
                maxLines: 2,
                colorText: Colors.black54,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  AppText(
                    text:
                        "\$ ${controllers.promotionalPrice(product.price!, product.endow!.endow!, product.endow!.categoryEndow!)}",
                    sizeText: kSizeTextH4,
                    colorText: kColorDollar,
                  ),
                  const Spacer(),
                  Text(
                    "\$ ${product.price}",
                    textScaleFactor: kSizeTextH4,
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontFamily: 'Nunito',
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      minHeight: 20,
                      value: controllers.progressFlashSale(
                          product.endow!.bought!, product.endow!.limit!),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 255, 72, 0)),
                      backgroundColor: Colors.black12,
                    ),
                  ),
                  Center(
                    child: AppText(
                      text: "${product.endow!.bought}/${product.endow!.limit}",
                      sizeText: kSizeTextH5,
                      colorText: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
