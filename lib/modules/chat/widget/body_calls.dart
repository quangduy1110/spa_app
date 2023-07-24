import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:app_spa/modules/chat/controllers/chat_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BodyCalls extends StatelessWidget {
  const BodyCalls({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController controller = Get.find();
    return Obx(
      () => controller.listChats.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: controller.listCalls.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          controller.listCalls[index].avatar!,
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
                                sizeText: kSizeTextH2),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  controller.getIconCall(controller
                                      .listCalls[index]
                                      .listCall![(controller.listCalls[index]
                                              .listCall!.length -
                                          1)]
                                      .type!),
                                ),
                                const SizedBox(width: 5),
                                AppText(
                                  text:
                                      '${controller.getTypeCall(controller.listCalls[index].listCall![(controller.listCalls[index].listCall!.length - 1)].type!)} | ${controller.converDateTime(controller.listCalls[index].listCall![(controller.listCalls[index].listCall!.length - 1)].time!)}',
                                  maxLines: 1,
                                  sizeText: kSizeTextH4,
                                  fontWeight: FontWeight.w100,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset('assets/icons/icon-phone-call.svg')
                    ],
                  ),
                );
              },
            )
          : Container(),
    );
  }
}
