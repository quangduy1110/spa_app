// To parse this JSON data, do
//
//     final categoryService = categoryServiceFromJson(jsonString);

import 'dart:convert';

List<CategoryService> categoryServiceFromJson(String str) => List<CategoryService>.from(json.decode(str).map((x) => CategoryService.fromJson(x)));

String categoryServiceToJson(List<CategoryService> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryService {
    CategoryService({
        this.id,
        this.imageCategoryProduct,
        this.nameCategoryProduct,
    });

    int? id;
    String? imageCategoryProduct;
    String? nameCategoryProduct;

    factory CategoryService.fromJson(Map<String, dynamic> json) => CategoryService(
        id: json["id"],
        imageCategoryProduct: json["imageCategoryProduct"],
        nameCategoryProduct: json["nameCategoryProduct"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "imageCategoryProduct": imageCategoryProduct,
        "nameCategoryProduct": nameCategoryProduct,
    };
}
