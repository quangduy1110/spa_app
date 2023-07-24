import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/modules/chat/widget/body_calls.dart';
import 'package:app_spa/modules/chat/widget/boy_chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabChat extends StatelessWidget {
  const TabChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: kSizeTextH5,
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: kColorMain,
                ),
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: Get.width * 0.05,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: Get.width * 0.05,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  tab(context, 'Chats'),
                  tab(context, 'Calls'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(kSizeTextEdgeInsets),
                    child: BodyChat(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(kSizeTextEdgeInsets),
                    child: BodyCalls(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container tab(BuildContext context, String text) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 1, color: kColorMain),
      ),
      child: Align(
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: kSizeTextH5,
          ),
          child: Tab(
            text: text,
          ),
        ),
      ),
    );
  }
}
