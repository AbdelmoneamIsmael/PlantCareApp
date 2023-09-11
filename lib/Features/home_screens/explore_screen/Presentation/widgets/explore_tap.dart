// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/manger/main_explore_cubit/main_explore_cubit.dart';
import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/strings_and_pathes/strings_and_pathes.dart';

class ExploreTap extends StatelessWidget {
  List boxX = [
    -1.0,
    -.47,
    0.22,
    1.0,
  ];

  List widths = [80.0, 82.0, 95.0, 83.0];

  int currentTAp = 2;

  double boxY = 0;

  ExploreTap({super.key});

  @override
  Widget build(BuildContext context) {
    late MainExploreCubit cubit;
    return BlocConsumer<MainExploreCubit, MainExploreState>(
      listener: (context, state) {},
      builder: (context, state) {
        cubit = MainExploreCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                selectAnimation(cubit.currentScreen),
                taps(cubit),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget selectAnimation(int currentPage) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      alignment: Alignment(boxX[currentPage], boxY),
      child: Container(
        height: 60,
        width: widths[currentPage],
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.appBarColor,
        ),
      ),
    );
  }

  Widget taps(MainExploreCubit cubit) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, top: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                cubit.changeTapAndScreenValue(index);
              },
              child: Text(
                StringsAndPathes.tapExploreLabel[index],
                style: Theme.of(context).textTheme.bodySmall,
              )),
          separatorBuilder: (context, index) => const SizedBox(width: 37),
          itemCount: 4),
    );
  }
}
