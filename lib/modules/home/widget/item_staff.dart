import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/model/staff.dart';
import 'package:flutter/material.dart';

class ItemStaff extends StatelessWidget {
  const ItemStaff({
    Key? key,
    required this.staff,
  }) : super(key: key);

  final Staff staff;

  @override
  Widget build(BuildContext context) {
    return 
    Card(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(
                staff.imageStaff!,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: staff.nameStaff!,
                  sizeText: kSizeTextH4,
                  fontWeight: FontWeight.bold,
                ),
                AppText(
                  text: staff.position!,
                  sizeText: kSizeTextH5,
                  colorText: Colors.black54,
                ),
              ],
            ),
            const Spacer(),
            AppText(
              text: "${staff.subPlaced} Order",
              sizeText: kSizeTextH4,
            ),
          ],
        ),
      ),
    );
  }
}
