import 'package:flutter/material.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/manger/main_explore_cubit/main_explore_cubit.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_new.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_popular.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_saved.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/explore_tap.dart';
import 'explore_fethers/explore_all.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
   late MainExploreCubit cubit;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return MainExploreCubit();
          },
        ),
      ],
      child: BlocConsumer<MainExploreCubit, MainExploreState>(
          listener: (context, state) {},
          builder: (context, state) {
            cubit=MainExploreCubit.get(context);
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Center(child: ExploreTap()),
                  exploreScreens(cubit.currentScreen),
                ],
              ),
            );
          }),
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
