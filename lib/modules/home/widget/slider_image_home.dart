import 'package:app_spa/modules/home/controllers/home_controllers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class SliderImageHome extends StatelessWidget {
  const SliderImageHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomeControllers controllers = Get.find();
    return Column(
      children: [
        Obx(
          () => CarouselSlider.builder(
            itemCount: controllers.listSliderImage.length,
            options: CarouselOptions(
              height: Get.height / Get.width * 70,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
            ),
            itemBuilder: ((context, index, realIndex) {
              if (controllers.listSliderImage.isNotEmpty) {
                final img = controllers.listSliderImage[index].urlImageSlider;
                return buildImage(img!);
              } else {
                return SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow,
                    child: const Card(
                      color: Colors.yellow,
                    ),
                  ),
                );
              }
            }),
          ),
        ),
      ],
    );
  }

  Widget buildImage(String url) => SizedBox(
        width: Get.width,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ),
      );
}
