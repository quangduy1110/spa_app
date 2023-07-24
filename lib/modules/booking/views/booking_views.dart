import 'package:app_spa/common/widgets/app_header.dart';
import 'package:app_spa/modules/booking/widget/list_booking.dart';
import 'package:flutter/material.dart';

class BookingView extends StatelessWidget {
  const BookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: const AppHeader(
                text: 'Spa',
                svgLeft: 'assets/icons/icon_logo.svg',
                sizeIcon: 48,
                svgRight: 'assets/icons/fi-rr-search.svg',
                isCheckIconRight: true,
              ),
            ),
            const SizedBox(height: 20),
            const ListBooking(),
          ],
        ),
      ),
    );
  }
}
