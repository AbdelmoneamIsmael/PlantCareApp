import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/strings_and_pathes/strings_and_pathes.dart';

class MainViewWidgets  {

  static List<BottomNavigationBarItem> items= [
    BottomNavigationBarItem(icon: const FaIcon(FontAwesomeIcons.houseChimney),label: StringsAndPathes.bottomNavigationBarLabel[0]),
    BottomNavigationBarItem(icon:const FaIcon(FontAwesomeIcons.leaf),label:  StringsAndPathes.bottomNavigationBarLabel[1]),
    BottomNavigationBarItem(icon:const FaIcon(FontAwesomeIcons.calendarDay),label:  StringsAndPathes.bottomNavigationBarLabel[2]),
    BottomNavigationBarItem(icon: const FaIcon(FontAwesomeIcons.idCard),label:  StringsAndPathes.bottomNavigationBarLabel[3]),
  ];
  static StatelessWidget appBar(index,context)=>  Container(
    width: double.infinity,
    height: 60,
    color: AppColors.appBarColor,
    child: Center(child: Text(StringsAndPathes.bottomNavigationBarLabel[index],style: Theme.of(context).textTheme.bodyMedium,)),
  );
}
