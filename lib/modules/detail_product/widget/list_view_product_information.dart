import 'package:app_spa/common/widgets/app_dialog_img.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewProductInformation extends StatelessWidget {
  const ListViewProductInformation({
    Key? key,
    required this.productInformation,
  }) : super(key: key);
  final List<ProductInformation> productInformation;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: productInformation.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            AppText(
              text: productInformation[index].content!,
              fontWeight: FontWeight.w300,
              colorText: Colors.black87,
            ),
            Visibility(
              visible: productInformation[index].image!.isEmpty ? false : true,
              child: InkWell(
                onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AppDialogImg(
                    image: productInformation[index].image!,
                  ),
                ),
                child: Image.network(
                  productInformation[index].image!,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
