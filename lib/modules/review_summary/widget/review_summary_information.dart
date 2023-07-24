import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/modules/review_summary/widget/review_summary_text_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewSummaryInformation extends StatelessWidget {
  const ReviewSummaryInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kSizeTextEdgeInsets),
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
        children: const [
          ReviewSummaryTextInformation(
            title: 'Spa',
            content: 'Fnova',
          ),
          SizedBox(height: 10),
          ReviewSummaryTextInformation(
            title: 'Address',
            content: '28/105 Doãn Kế Thiện, Cầu Giấy, Hà Nội',
          ),
          ReviewSummaryTextInformation(
            title: 'Name',
            content: 'Daniel Aulin',
          ),
          SizedBox(height: 10),
          ReviewSummaryTextInformation(
            title: 'Phone',
            content: '0964396091',
          ),
          SizedBox(height: 10),
          ReviewSummaryTextInformation(
            title: 'Booking Date',
            content: '20/10/2022',
          ),
          SizedBox(height: 10),
          ReviewSummaryTextInformation(
            title: 'Booking Hours',
            content: '10:00 am',
          ),
          SizedBox(height: 10),
          ReviewSummaryTextInformation(
            title: 'Specialist',
            content: 'Jenny',
          ),
        ],
      ),
    );
  }
}
