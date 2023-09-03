import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:plant_care/core/colors/app_colors.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              color: Colors.grey,
              offset: Offset(0, 2),
            )
          ]),
      height: 340,
      width: double.infinity,
      child: CalendarCarousel(
        todayButtonColor: AppColors.appBarColor,
        weekdayTextStyle: const TextStyle(
          color: Color.fromARGB(255, 222, 219, 219),
        ),
        headerTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
        iconColor: Colors.black,
        selectedDayBorderColor: AppColors.appBarColor,
        daysTextStyle: const TextStyle(color: Colors.black),
        firstDayOfWeek: 1,
      ),
    );
  }
}
