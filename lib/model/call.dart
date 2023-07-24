// To parse this JSON data, do
//
//     final call = callFromJson(jsonString);

import 'dart:convert';

List<Call> callFromJson(String str) => List<Call>.from(json.decode(str).map((x) => Call.fromJson(x)));

String callToJson(List<Call> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Call {
    Call({
        this.idUser,
        this.avatar,
        this.nameUser,
        this.phoneNumber,
        this.listCall,
    });

    int? idUser;
    String? avatar;
    String? nameUser;
    String? phoneNumber;
    List<ListCall>? listCall;

    factory Call.fromJson(Map<String, dynamic> json) => Call(
        idUser: json["idUser"],
        avatar: json["avatar"],
        nameUser: json["nameUser"],
        phoneNumber: json["phoneNumber"],
        listCall: List<ListCall>.from(json["listCall"].map((x) => ListCall.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "idUser": idUser,
        "avatar": avatar,
        "nameUser": nameUser,
        "phoneNumber": phoneNumber,
        "listCall": List<dynamic>.from(listCall!.map((x) => x.toJson())),
    };
}

class ListCall {
    ListCall({
        this.type,
        this.time,
    });

    int? type;
    DateTime? time;

    factory ListCall.fromJson(Map<String, dynamic> json) => ListCall(
        type: json["type"],
        time: DateTime.parse(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "time": time!.toIso8601String(),
    };
}
