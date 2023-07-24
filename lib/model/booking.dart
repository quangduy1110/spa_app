import 'dart:convert';

List<Booking> bookingFromJson(String str) => List<Booking>.from(json.decode(str).map((x) => Booking.fromJson(x)));

String bookingToJson(List<Booking> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Booking {
  Booking({
    this.idBooking,
    this.listService,
    this.time,
    this.idStaff,
    this.note,
    this.status,
    this.isRemid,
  });

  int? idBooking;
  List<ListService>? listService;
  DateTime? time;
  int? idStaff;
  String? note;
  int? status;
  bool? isRemid;

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        idBooking: json["idBooking"],
        listService: List<ListService>.from(json["listService"].map((x) => ListService.fromJson(x))),
        time: DateTime.parse(json["time"]),
        idStaff: json["idStaff"],
        note: json["note"],
        status: json["status"],
        isRemid: json["isRemid"],
      );

  Map<String, dynamic> toJson() => {
        "idBooking": idBooking,
        "listService": List<dynamic>.from(listService!.map((x) => x.toJson())),
        "time": time!.toIso8601String(),
        "idStaff": idStaff,
        "note": note,
        "status": status,
        "isRemid": isRemid,
      };
}

class ListService {
  ListService({
    this.idService,
    this.nameService,
    this.nameSpa,
    this.categoryService,
    this.introduce,
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
  String? introduce;
  int? price;
  int? rate;
  String? address;
  List<ListTime>? listTime;
  List<ListImage>? listImage;
  List<ListReview>? listReview;
  int? isOutstanding;

  factory ListService.fromJson(Map<String, dynamic> json) => ListService(
        idService: json["idService"],
        nameService: json["nameService"],
        nameSpa: json["nameSpa"],
        categoryService: json["categoryService"],
        introduce: json["introduce"],
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
        "introduce": introduce,
        "price": price,
        "rate": rate,
        "address": address,
        "listTime": List<dynamic>.from(listTime!.map((x) => x.toJson())),
        "listImage": List<dynamic>.from(listImage!.map((x) => x.toJson())),
        "listReview": List<dynamic>.from(listReview!.map((x) => x.toJson())),
        "isOutstanding": isOutstanding,
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
