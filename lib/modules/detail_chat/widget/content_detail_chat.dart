import 'package:app_spa/model/chat.dart';
import 'package:app_spa/modules/detail_chat/controllers/detail_chat_controllers.dart';
import 'package:app_spa/modules/detail_chat/widget/item_text_chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentDetailChat extends StatelessWidget {
  const ContentDetailChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailChatController controller = Get.find();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: controller.chats.value.listChat!.length,
          itemBuilder: (context, index) {
            return Message(
              listChat: controller.chats.value.listChat![index],
              chat: controller.chats.value,
            );
          },
        ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  const Message({Key? key, required this.listChat, required this.chat})
      : super(key: key);

  final ListChat listChat;
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(int type) {
      switch (type) {
        case 0:
          return ItemTextChat(
            listChat: listChat,
          );
        case 1:
          return Container();
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: listChat.isSender! == 1
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (listChat.isSender == 0) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(chat.avatar!),
            ),
            const SizedBox(width: 20 / 2),
          ],
          messageContaint(listChat.type!),
          if (listChat.isSender == 1) MessageStatusDot(listChat: listChat)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final ListChat listChat;

  const MessageStatusDot({Key? key, required this.listChat}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(int status) {
      switch (status) {
        case 0:
          return Colors.red;
        case 1:
          return Colors.grey;
        case 2:
          return Colors.green;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: 20 / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(listChat.status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        listChat.status! == 0 ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
