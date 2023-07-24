import 'dart:convert';

List<Staff> staffFromJson(String str) =>
    List<Staff>.from(json.decode(str).map((x) => Staff.fromJson(x)));

String staffToJson(List<Staff> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Staff {
  Staff({
    this.idStaff,
    this.imageStaff,
    this.nameStaff,
    this.position,
    this.subPlaced,
  });

  int? idStaff;
  String? imageStaff;
  String? nameStaff;
  String? position;
  int? subPlaced;

  factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        idStaff: json["idStaff"],
        imageStaff: json["imageStaff"],
        nameStaff: json["nameStaff"],
        position: json["position"],
        subPlaced: json["subPlaced"],
      );

  Map<String, dynamic> toJson() => {
        "idStaff": idStaff,
        "imageStaff": imageStaff,
        "nameStaff": nameStaff,
        "position": position,
        "subPlaced": subPlaced,
      };
}
