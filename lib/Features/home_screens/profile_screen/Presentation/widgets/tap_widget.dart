import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

import '../view/about.dart';
import '../view/personal_information.dart';

class TapWidget extends StatelessWidget {
  final Widget widget;
  final String text;
  final int index;
  const TapWidget(
      {required this.index, required this.text, required this.widget, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            {
              Get.to(
                const PersonalInformation(),
                transition: Transition.rightToLeft,
                duration: StringsAndPathes.time,
              );
            }

          case 3:
            {
              Get.to(
                const AboutScreen(),
                transition: Transition.rightToLeft,
                duration: StringsAndPathes.time,
              );
            }

            break;
        }
      },
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.grey,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Container(child: widget),
            ],
          ),
        ),
      ),
    );
  }
}
