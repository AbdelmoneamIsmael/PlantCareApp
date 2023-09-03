import 'package:flutter/material.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_new.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_popular.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_saved.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/explore_tap.dart';
import '../widgets/shared_variable.dart';
import 'explore_fethers/explore_all.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    setState(() {
      index = screenTapIndex;
    });
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: ExploreTap()),
          exploreScreens(index),
        ],
      ),
    );
  }

  Widget exploreScreens(index) {
    List<Widget> screens = [
      const ExploreAll(),
      const ExploreNew(),
      const ExplorePopular(),
      const ExploreSaved(),
    ];
    return screens[index];
  }
}
