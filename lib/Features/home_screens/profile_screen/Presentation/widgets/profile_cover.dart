import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/strings_and_pathes/strings_and_pathes.dart';

class ProfileCover extends StatelessWidget {
  const ProfileCover({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        padding: const EdgeInsets.all(40),
        height: 250,
        width: double.infinity,
        color: AppColors.appBarColor,
        child: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(StringsAndPathes.profileImage))),
        ),
      ),
    );
  }
}
