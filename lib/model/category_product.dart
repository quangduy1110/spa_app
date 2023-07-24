// To parse this JSON data, do
//
//     final categoryProduct = categoryProductFromJson(jsonString);

import 'dart:convert';

List<CategoryProduct> categoryProductFromJson(String str) => List<CategoryProduct>.from(json.decode(str).map((x) => CategoryProduct.fromJson(x)));

String categoryProductToJson(List<CategoryProduct> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryProduct {
    CategoryProduct({
        this.id,
        this.imageCategoryProduct,
        this.nameCategoryProduct,
    });

    int? id;
    String? imageCategoryProduct;
    String? nameCategoryProduct;

    factory CategoryProduct.fromJson(Map<String, dynamic> json) => CategoryProduct(
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
