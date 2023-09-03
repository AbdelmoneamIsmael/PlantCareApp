import 'package:flutter/material.dart';
import 'package:plant_care/core/colors/app_colors.dart';

class ThemeDataMode {
  static ThemeData light() {
    return ThemeData(
      textTheme:  TextTheme(
        bodyLarge: const TextStyle(
          color: Colors.white,
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColors.textColor,
        ),
          bodySmall: TextStyle(
            fontSize: 20,
            color: AppColors.textColor,
          )
      ),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.iconOrTextLinkColor,
        unselectedItemColor: AppColors.btnColor,
        type: BottomNavigationBarType.fixed,
      )

    );
  }
}
