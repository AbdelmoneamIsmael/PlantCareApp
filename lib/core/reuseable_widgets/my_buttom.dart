import 'package:flutter/material.dart';

import '../../../../core/colors/app_colors.dart';

class MyBTN extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function()? onTap;

  const MyBTN(
      {required this.text,
      required this.onTap,
      super.key,
      this.width = double.infinity,
        this.height=65
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.btnColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          text,
        )),
      ),
    );
  }
}
