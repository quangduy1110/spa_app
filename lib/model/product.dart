
import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    Product({
        this.idProduct,
        this.nameProduct,
        this.categoryProduct,
        this.price,
        this.imageProduct,
        this.quantity,
        this.trademark,
        this.origin,
        this.madeIn,
        this.capacity,
        this.skinType,
        this.characteristic,
        this.sex,
        this.skinProblems,
        this.isTrend,
        this.isFeatured,
        this.endow,
        this.productInformation,
    });

    String? idProduct;
    String? nameProduct;
    int? categoryProduct;
    int? price;
    List<ImageProduct>? imageProduct;
    int? quantity;
    String? trademark;
    String? origin;
    String? madeIn;
    String? capacity;
    String? skinType;
    String? characteristic;
    String? sex;
    String? skinProblems;
    int? isTrend;
    int? isFeatured;
    Endow? endow;
    List<ProductInformation>? productInformation;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        idProduct: json["idProduct"],
        nameProduct: json["nameProduct"],
        categoryProduct: json["categoryProduct"],
        price: json["price"],
        imageProduct: List<ImageProduct>.from(json["imageProduct"].map((x) => ImageProduct.fromJson(x))),
        quantity: json["quantity"],
        trademark: json["trademark"],
        origin: json["origin"],
        madeIn: json["madeIn"],
        capacity: json["capacity"],
        skinType: json["skinType"],
        characteristic: json["characteristic"],
        sex: json["sex"],
        skinProblems: json["skinProblems"],
        isTrend: json["isTrend"],
        isFeatured: json["isFeatured"],
        endow: Endow.fromJson(json["endow"]),
        productInformation: List<ProductInformation>.from(json["productInformation"].map((x) => ProductInformation.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "idProduct": idProduct,
        "nameProduct": nameProduct,
        "categoryProduct": categoryProduct,
        "price": price,
        "imageProduct": List<dynamic>.from(imageProduct!.map((x) => x.toJson())),
        "quantity": quantity,
        "trademark": trademark,
        "origin": origin,
        "madeIn": madeIn,
        "capacity": capacity,
        "skinType": skinType,
        "characteristic": characteristic,
        "sex": sex,
        "skinProblems": skinProblems,
        "isTrend": isTrend,
        "isFeatured": isFeatured,
        "endow": endow!.toJson(),
        "productInformation": List<dynamic>.from(productInformation!.map((x) => x.toJson())),
    };
}

class Endow {
    Endow({
        this.categoryEndow,
        this.endow,
        this.bought,
        this.limit,
    });

    int? categoryEndow;
    int? endow;
    int? bought;
    int? limit;

    factory Endow.fromJson(Map<String, dynamic> json) => Endow(
        categoryEndow: json["categoryEndow"],
        endow: json["endow"],
        bought: json["bought"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "categoryEndow": categoryEndow,
        "endow": endow,
        "bought": bought,
        "limit": limit,
    };
}

class ImageProduct {
    ImageProduct({
        this.url,
    });

    String? url;

    factory ImageProduct.fromJson(Map<String, dynamic> json) => ImageProduct(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}

class ProductInformation {
    ProductInformation({
        this.content,
        this.image,
    });

    String? content;
    String? image;

    factory ProductInformation.fromJson(Map<String, dynamic> json) => ProductInformation(
        content: json["content"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "content": content,
        "image": image,
    };
}

