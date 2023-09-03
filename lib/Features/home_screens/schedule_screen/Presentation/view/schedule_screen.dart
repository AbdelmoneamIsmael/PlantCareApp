import 'package:flutter/material.dart';
import 'wedgit/calender.dart';
import 'wedgit/water_item.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CalenderWidget(),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 25),
              child: Text(
                'Water (5)',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const WaterItems(),
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
