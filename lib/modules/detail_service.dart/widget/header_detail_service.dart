import 'package:app_spa/modules/detail_service.dart/controllers/detail_service_controllers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderDetailService extends StatelessWidget {
  const HeaderDetailService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailServiceController controllers = Get.find();
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
          ),
          items: controllers.service.value.listImage!
              .map(
                (item) => Center(
                  child: Image.network(
                    item.url!,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
