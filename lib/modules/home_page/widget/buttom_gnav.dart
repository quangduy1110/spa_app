import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/modules/home_page/controllers/home_page_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class ButtomGNav extends StatelessWidget {
  const ButtomGNav({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GNav(
        rippleColor: kColorMain,
        hoverColor: kColorMain,
        activeColor: Colors.white,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        tabBackgroundColor: kColorMain,
        color: kColorMain,
        tabBorderRadius: 15,
        tabs: const [
          GButton(
            icon: LineIcons.spa,
            text: 'Spa',
          ),
          GButton(
            icon: LineIcons.pagelines,
            text: 'Product',
          ),
          GButton(
            icon: Icons.calendar_month_rounded,
            text: 'Booking',
          ),
          GButton(
            icon: LineIcons.rocketChat,
            text: 'Chats',
          ),
          GButton(
            icon: LineIcons.user,
            text: 'Profile',
          ),
        ],
        selectedIndex: controller.selectedIndex.value,
        onTabChange: (index) {
          controller.selectedIndex.value = index;
        },
      ),
    );
  }
}
