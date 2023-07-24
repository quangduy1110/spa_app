

import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ReviewSummaryTextInformation extends StatelessWidget {
  const ReviewSummaryTextInformation({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: AppText(
            text: title,
            sizeText: kSizeTextH5,
            colorText: Colors.black54,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: AppText(
              text: content,
              sizeText: kSizeTextH4,
            ),
          ),
        )
      ],
    );
  }
}
