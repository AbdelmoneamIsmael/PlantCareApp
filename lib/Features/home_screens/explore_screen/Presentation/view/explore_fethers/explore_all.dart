import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/card_on.dart';
import 'package:plant_care/core/colors/app_colors.dart';

import '../../../../../../core/strings_and_pathes/strings_and_pathes.dart';
import '../../manger/fetch_all_cubit/fetch_all__cubit.dart';
import '../../widgets/card_plant.dart';

class ExploreAll extends StatefulWidget {
  const ExploreAll({super.key});

  @override
  State<ExploreAll> createState() => _ExploreAllState();
}

class _ExploreAllState extends State<ExploreAll> {
  var pageViewController = PageController();
  int currentPageValue = 0;

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsAndPathes.slideBarTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          pageViewItems(),
          plantCareTextRow(),
          gridView(),
        ],
      ),
    );
  }

  Widget pageViewItems() {
    return BlocConsumer<FetchAllYouMayLikeCubit, FetchAllState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is FetchAllLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.green,
          ));
        }
        if (state is FetchAllSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: Column(
              children: [
                SizedBox(
                  height: 280,
                  child: PageView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:
                          PlantCard(exploreEntity: state.exploreEntity[index]),
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: state.exploreEntity.length,
                    onPageChanged: (value) {
                      setState(() {
                        currentPageValue = value;
                      });
                    },
                    controller: pageViewController,
                  ),
                ),
                Center(
                  child: DotsIndicator(
                    dotsCount: 5,
                    position: currentPageValue,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      activeColor: AppColors.appBarColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return state is FetchAllError ? Text(state.e) : const Text('ddd');
        }
      },
    );
  }

  Widget plantCareTextRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringsAndPathes.plantCare,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            StringsAndPathes.seeAll,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.iconOrTextLinkColor),
          ),
        ],
      );
  Widget gridView() => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1 / 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => const Stack(
              children: [
                PlantOnGrid(),
              ],
            ),
          ),
        ),
      );
}
