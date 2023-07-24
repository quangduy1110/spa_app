import 'package:app_spa/modules/product/controllers/product_controllers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderImageProduct extends StatelessWidget {
  const SliderImageProduct({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ProductControllers controllers = Get.find();
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: controllers.listSliderImage.length,
            options: CarouselOptions(
              height: Get.height / Get.width * 70,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                controllers.indexImage.value = index;
              },
            ),
            itemBuilder: ((context, index, realIndex) {
              return controllers.listSliderImage.isNotEmpty
                  ? buildImage(
                      controllers.listSliderImage[index].urlImageSlider!,
                    )
                  : Container();
            }),
          ),
        ],
      ),
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
