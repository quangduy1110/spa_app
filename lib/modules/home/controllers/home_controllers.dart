import 'package:app_spa/model/booking.dart';
import 'package:app_spa/model/category_service.dart';
import 'package:app_spa/model/service.dart';
import 'package:app_spa/model/image_slider.dart';
import 'package:app_spa/model/staff.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeControllers extends GetxController {
  RxList<ImageSlider> listSliderImage = <ImageSlider>[].obs;
  RxList<Service> listService = <Service>[].obs;
  RxList<Staff> listStaff = <Staff>[].obs;
  RxList<Booking> listBooking = <Booking>[].obs;
  RxList<CategoryService> listCategoryService = <CategoryService>[].obs;
  RxInt indexFirstUpComing = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    getListCategoryService();
    getListService();
    getListSliderImage();
    getListStaff();
    getBookingUpComing();
  }

  getListSliderImage() async {
    String response = await rootBundle.loadString('assets/json/slider_product.json');
    listSliderImage.value = imageSliderFromJson(response);
  }

  getListCategoryService() async {
    String response = await rootBundle.loadString('assets/json/category_serice.json');
    listCategoryService.value = categoryServiceFromJson(response);
  }

  getListService() async {
    String response = await rootBundle.loadString('assets/json/service.json');
    listService.value = serviceFromJson(response);
  }

  getListStaff() async {
    String response = await rootBundle.loadString('assets/json/staff.json');
    listStaff.value = staffFromJson(response);
    listStaff.sort((a, b) => b.subPlaced!.compareTo(a.subPlaced!));
    //listStaff.reversed;
  }

  sortStaff() {
    for (int i = listStaff.length - 1; i >= 0; i--) {
      for (int j = 1; j <= i; j++) {
        if (listStaff[j - 1].subPlaced! < listStaff[j].subPlaced!) {
          Staff temp = listStaff[j - 1];
          listStaff[j - 1] = listStaff[j];
          listStaff[j] = temp;
        }
      }
    }
  }

 

  getBookingUpComing() async {
    String response = await rootBundle.loadString('assets/json/booking.json');
    listBooking.value = bookingFromJson(response);
    DateTime dateTimeNow = DateTime.now();
    indexFirstUpComing.value = listBooking.indexWhere((item) => item.status == 1);
    if (indexFirstUpComing.value == -1) {

    } else {
      for (int i = listBooking.length - 1; i >= 0; i--) {
        for (int j = 1; j <= i; j++) {
          if (listBooking[j - 1].time!.difference(dateTimeNow).inMinutes >
                  listBooking[j].time!.difference(dateTimeNow).inMinutes &&
              listBooking[j].status == 1 &&
              listBooking[j - 1].status == 1) {
            Booking temp = listBooking[j - 1];
            listBooking[j - 1] = listBooking[j];
            listBooking[j] = temp;
          }
        }
      }
      indexFirstUpComing.value = listBooking.indexWhere((item) => item.status == 1);
    }
  }

  String convertDateTime(DateTime dateTime) {
    DateFormat dateFormat = DateFormat("MMM dd, yyyy - hh:mm a");
    String result = dateFormat.format(dateTime);
    return result;
  }

  String nameServiceUpComing(Booking booking) {
    String result = "1. ${booking.listService![0].nameService!}";
    for (int i = 1; i < booking.listService!.length; i++) {
      result = "$result \n${i + 1}. ${booking.listService![i].nameService}";
    }
    return result;
  }

  int subPrice(Booking booking) {
    int result = 0;
    for (int i = 0; i < booking.listService!.length; i++) {
      result = result + booking.listService![i].price!;
    }
    return result;
  }
}
