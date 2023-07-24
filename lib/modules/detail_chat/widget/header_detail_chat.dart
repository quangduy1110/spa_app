import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/detail_chat/controllers/detail_chat_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HeaderDetailChat extends StatelessWidget {
  const HeaderDetailChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailChatController controller = Get.find();
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.chevron_left),
          ),
          const SizedBox(
            width: 5,
          ),
          Obx(
            () => CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(controller.chats.value.avatar!),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Obx(
            () => AppText(
              text: controller.chats.value.nameUser!,
              sizeText: kSizeTextH2,
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/icons/icon-phone-call.svg'),
        ],
      ),
    );
  }
}
