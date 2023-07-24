import 'package:app_spa/common/theme/app_colors.dart';
import 'package:app_spa/common/theme/app_size.dart';
import 'package:flutter/material.dart';

import 'cancelled_booking.dart';
import 'completed_booking.dart';
import 'upcoming_booking.dart';

class ListBooking extends StatelessWidget {
  const ListBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: kColorMain,
                ),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  tab(context, 'Upcoming'),
                  tab(context, 'Completed'),
                  tab(context, 'Cancelled'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    UpcomingBooking(),
                    CompletedBooking(),
                    CancelledBooking(),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Container tab(BuildContext context, String text) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: kColorMain)),
      child: Align(
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: kSizeTextH5,
          ),
          child: Tab(
            text: text,
          ),
        ),
      ),
    );
  }
}
