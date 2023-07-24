import 'package:app_spa/common/theme/app_size.dart';
import 'package:app_spa/common/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookAppointmentNote extends StatelessWidget {
  const BookAppointmentNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
          sizeText: kSizeTextH2,
          text: 'Note',
          fontWeight: FontWeight.w400,
        ),
        Container(
          padding: const EdgeInsets.all(kSizeTextEdgeInsets),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(
                  0.5,
                  3,
                ), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(kSizeTextEdgeInsets),
                height: 250,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(31, 199, 199, 199),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: Get.width * 0.05,
                    fontFamily: 'Nunito',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 5,
                  maxLength: 100,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    counterText: '',
                    border: InputBorder.none,
                    hintText: 'Note ..',
                  ),
                ),
              ),
              const AppText(
                sizeText: kSizeTextH4,
                text: '*Up to 100 character',
                colorText: Colors.black54,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
