
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewSummaryPaymentInformation extends StatelessWidget {
  const ReviewSummaryPaymentInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Get.width * 0.025),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
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
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: AppText(
                        text: 'Facial massage (rose essential oil)',
                        sizeText: kSizeTextH5,
                        colorText: Colors.black54,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: AppText(
                        text: '\$ 100',
                        sizeText: kSizeTextH4,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.black54,
            width: Get.width * 0.75,
            height: 0.8,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                width: 100,
                child: AppText(
                  text: 'Total',
                  sizeText: kSizeTextH4,
                  colorText: Colors.black54,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: AppText(
                    text: '\$ 300',
                    sizeText: kSizeTextH5,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
