import 'package:app_spa/modules/home_page/controllers/home_page_controllers.dart';
import 'package:app_spa/modules/home_page/widget/buttom_gnav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../booking/views/booking_views.dart';
import '../../chat/views/chat_views.dart';
import '../../home/views/home_view.dart';
import '../../product/views/product_views.dart';
import '../../profile/views/profile_views.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listWidget = [
      const HomeView(),
      const ProductView(),
      const BookingView(),
      const ChatView(),
      const Profile()
    ];
    HomePageController controller = Get.find();
    return Scaffold(
      body: Obx(() => listWidget.elementAt(controller.selectedIndex.value)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.2),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: ButtomGNav(controller: controller),
          ),
        ),
      ),
    );
  }
}
