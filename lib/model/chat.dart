// To parse this JSON data, do
//
//     final chat = chatFromJson(jsonString);

import 'dart:convert';

List<Chat> chatFromJson(String str) => List<Chat>.from(json.decode(str).map((x) => Chat.fromJson(x)));

String chatToJson(List<Chat> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Chat {
    Chat({
        this.idUser,
        this.avatar,
        this.nameUser,
        this.listChat,
    });

    int? idUser;
    String? avatar;
    String? nameUser;
    List<ListChat>? listChat;

    factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        idUser: json["idUser"],
        avatar: json["avatar"],
        nameUser: json["nameUser"],
        listChat: List<ListChat>.from(json["listChat"].map((x) => ListChat.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "idUser": idUser,
        "avatar": avatar,
        "nameUser": nameUser,
        "listChat": List<dynamic>.from(listChat!.map((x) => x.toJson())),
    };
}

class ListChat {
    ListChat({
        this.isSender,
        this.type,
        this.status,
        this.content,
        this.time,
    });

    int? isSender;
    int? type;
    int? status;
    String? content;
    DateTime? time;

    factory ListChat.fromJson(Map<String, dynamic> json) => ListChat(
        isSender: json["isSender"],
        type: json["type"],
        status: json["status"],
        content: json["content"],
        time: DateTime.parse(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "isSender": isSender,
        "type": type,
        "status": status,
        "content": content,
        "time": time!.toIso8601String(),
    };
}
