import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/model/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemComment extends StatelessWidget {
  const ItemComment({Key? key, required this.comment}) : super(key: key);
  final ListReview comment;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(
                    comment.avatar!,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppText(text: comment.name!, sizeText: kSizeTextH4),
                          const Spacer(),
                          SvgPicture.asset(
                            "assets/icons/ic_star.svg",
                            color: Colors.amber,
                            width: 16,
                          ),
                          AppText(
                            text: " ${comment.star!}",
                            sizeText: kSizeTextH5,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      AppText(
                        text: comment.comment!,
                        sizeText: kSizeTextH4,
                        colorText: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/ic_heart.svg",
                            color: Colors.red,
                            width: 16,
                          ),
                          AppText(
                            text: " ${comment.like!}",
                            sizeText: kSizeTextH5,
                          ),
                          const Spacer(),
                          AppText(
                            text: comment.time!,
                            sizeText: kSizeTextH5,
                            colorText: Colors.black54,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
