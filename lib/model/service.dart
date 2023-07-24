// To parse this JSON data, do
//
//     final service = serviceFromJson(jsonString);

import 'dart:convert';

List<Service> serviceFromJson(String str) => List<Service>.from(json.decode(str).map((x) => Service.fromJson(x)));

String serviceToJson(List<Service> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Service {
    Service({
        this.idService,
        this.nameService,
        this.nameSpa,
        this.categoryService,
        this.listIntroduce,
        this.price,
        this.rate,
        this.address,
        this.listTime,
        this.listImage,
        this.listReview,
        this.isOutstanding,
    });

    String? idService;
    String? nameService;
    String? nameSpa;
    int? categoryService;
    List<ListIntroduce>? listIntroduce;
    int? price;
    int? rate;
    String? address;
    List<ListTime>? listTime;
    List<ListImage>? listImage;
    List<ListReview>? listReview;
    int? isOutstanding;

    factory Service.fromJson(Map<String, dynamic> json) => Service(
        idService: json["idService"],
        nameService: json["nameService"],
        nameSpa: json["nameSpa"],
        categoryService: json["categoryService"],
        listIntroduce: List<ListIntroduce>.from(json["listIntroduce"].map((x) => ListIntroduce.fromJson(x))),
        price: json["price"],
        rate: json["rate"],
        address: json["address"],
        listTime: List<ListTime>.from(json["listTime"].map((x) => ListTime.fromJson(x))),
        listImage: List<ListImage>.from(json["listImage"].map((x) => ListImage.fromJson(x))),
        listReview: List<ListReview>.from(json["listReview"].map((x) => ListReview.fromJson(x))),
        isOutstanding: json["isOutstanding"],
    );

    Map<String, dynamic> toJson() => {
        "idService": idService,
        "nameService": nameService,
        "nameSpa": nameSpa,
        "categoryService": categoryService,
         "listIntroduce": List<dynamic>.from(listIntroduce!.map((x) => x.toJson())),
        "price": price,
        "rate": rate,
        "address": address,
        "listTime": List<dynamic>.from(listTime!.map((x) => x.toJson())),
        "listImage": List<dynamic>.from(listImage!.map((x) => x.toJson())),
        "listReview": List<dynamic>.from(listReview!.map((x) => x.toJson())),
        "isOutstanding": isOutstanding,
    };
}

class ListIntroduce {
    ListIntroduce({
        this.content,
        this.image,
    });

    String? content;
    String? image;

    factory ListIntroduce.fromJson(Map<String, dynamic> json) => ListIntroduce(
        content: json["content"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "content": content,
        "image": image,
    };
}

class ListImage {
    ListImage({
        this.url,
    });

    String? url;

    factory ListImage.fromJson(Map<String, dynamic> json) => ListImage(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}

class ListReview {
    ListReview({
        this.avatar,
        this.name,
        this.star,
        this.comment,
        this.time,
        this.like,
    });

    String? avatar;
    String? name;
    int? star;
    String? comment;
    String? time;
    int? like;

    factory ListReview.fromJson(Map<String, dynamic> json) => ListReview(
        avatar: json["avatar"],
        name: json["name"],
        star: json["star"],
        comment: json["comment"],
        time: json["time"],
        like: json["like"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "star": star,
        "comment": comment,
        "time": time,
        "like": like,
    };
}

class ListTime {
    ListTime({
        this.star,
        this.end,
        this.timeStar,
        this.timeEnd,
    });

    String? star;
    String? end;
    String? timeStar;
    String? timeEnd;

    factory ListTime.fromJson(Map<String, dynamic> json) => ListTime(
        star: json["star"],
        end: json["end"],
        timeStar: json["timeStar"],
        timeEnd: json["timeEnd"],
    );

    Map<String, dynamic> toJson() => {
        "star": star,
        "end": end,
        "timeStar": timeStar,
        "timeEnd": timeEnd,
    };
}


