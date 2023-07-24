
import 'dart:convert';

List<ImageSlider> imageSliderFromJson(String str) => List<ImageSlider>.from(json.decode(str).map((x) => ImageSlider.fromJson(x)));

String imageSliderToJson(List<ImageSlider> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageSlider {
    ImageSlider({
        this.urlImageSlider,
    });

    String? urlImageSlider;

    factory ImageSlider.fromJson(Map<String, dynamic> json) => ImageSlider(
        urlImageSlider: json["urlImageSlider"],
    );

    Map<String, dynamic> toJson() => {
        "urlImageSlider": urlImageSlider,
    };
}
