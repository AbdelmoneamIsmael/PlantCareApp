import 'package:flutter/material.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/shared_variable.dart';
import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/strings_and_pathes/strings_and_pathes.dart';

class ExploreTap extends StatefulWidget {
  const ExploreTap({super.key});

  @override
  State<ExploreTap> createState() => _ExploreTapState();
}

class _ExploreTapState extends State<ExploreTap> {
  List boxX = [
    -1.0,
    -.47,
    0.22,
    1.0,
  ];
  List widths = [80.0, 82.0, 95.0, 83.0];
  int currentTAp = 2;
  double boxY = 0;
  @override
  Widget build(BuildContext context) {
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
            selectAnimation(),
            taps(),
          ],
        ),
      ),
    );
  }

  Widget selectAnimation() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      alignment: Alignment(boxX[currentTAp], boxY),
      child: Container(
        height: 60,
        width: widths[currentTAp],
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.appBarColor,
        ),
      ),
    );
  }

  Widget taps() {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, top: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  currentTAp = index;

                  screenTapIndex = index;
                });
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
