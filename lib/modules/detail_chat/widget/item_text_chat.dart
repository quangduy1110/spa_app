import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/model/chat.dart';
import 'package:flutter/material.dart';

class ItemTextChat extends StatelessWidget {
  const ItemTextChat({Key? key, required this.listChat}) : super(key: key);

  final ListChat listChat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20 * 0.75,
        vertical: 20 / 2,
      ),
      decoration: BoxDecoration(
        color: kColorMain.withOpacity(listChat.isSender! == 1 ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        listChat.content!,
        style: TextStyle(
          color: listChat.isSender! == 1 ? Colors.white : kColorMain,
        ),
      ),
    );
  }
}
