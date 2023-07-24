import 'package:app_spa/common/widgets/app_header.dart';
import 'package:app_spa/modules/chat/widget/tab_chat.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: const AppHeader(
                text: 'Spa',
                svgLeft: 'assets/icons/icon_logo.svg',
                sizeIcon: 48,
                svgRight: 'assets/icons/fi-rr-search.svg',
                isCheckIconRight: true,
              ),
            ),
            const SizedBox(height: 20),
            const TabChat(),
          ],
        ),
      ),
    );
  }
}
