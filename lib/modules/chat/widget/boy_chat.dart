import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/chat/controllers/chat_controllers.dart';
import 'package:app_spa/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyChat extends StatelessWidget {
  const BodyChat({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController controller = Get.find();
    return Obx(
      () => controller.listChats.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: controller.listChats.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.DETAILCHAT, arguments: controller.listChats[index]);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipOval(
                          child: Image.network(
                            controller.listChats[index].avatar!,
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: controller.listChats[index].nameUser!,
                                sizeText: kSizeTextH2,
                                maxLines: 1,
                              ),
                              AppText(
                                text: controller
                                    .listChats[index]
                                    .listChat![(controller
                                            .listChats[index].listChat!.length -
                                        1)]
                                    .content!,
                                sizeText: kSizeTextH4,
                                maxLines: 1,
                                fontWeight: FontWeight.w200,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        AppText(
                            text: controller.converDateTime(controller
                                .listChats[index]
                                .listChat![(controller
                                        .listChats[index].listChat!.length -
                                    1)]
                                .time!),
                            sizeText: kSizeTextH4)
                      ],
                    ),
                  ),
                );
              },
            )
          : Container(),
    );
  }
}
