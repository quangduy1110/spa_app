import 'package:app_spa/modules/detail_chat/widget/bottom_detail_chat.dart';
import 'package:app_spa/modules/detail_chat/widget/content_detail_chat.dart';
import 'package:app_spa/modules/detail_chat/widget/header_detail_chat.dart';
import 'package:flutter/material.dart';

class DetailChatView extends StatelessWidget {
  const DetailChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderDetailChat(),
            Container(
              padding: const EdgeInsets.only(top: 5, right: 5),
              child: const Divider(
                height: 1,
              ),
            ),
            const ContentDetailChat(),
            const BottomDetailChat(),
          ],
        ),
      ),
    );
  }
}
