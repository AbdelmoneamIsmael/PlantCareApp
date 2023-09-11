import 'package:flutter/material.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/manger/fetch_all_cubit/fetch_all__cubit.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/manger/fetch_popular_cubit/fetch_popular_cubit.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/manger/fetch_saved_cubit/fetch_saved_cubit.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/manger/main_explore_cubit/main_explore_cubit.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_new.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_popular.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/view/explore_fethers/explore_saved.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/explore_tap.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/data/local_data_source/explore_new_local_data_source.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/data/local_data_source/explore_popular_local_data_source.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/data/local_data_source/explore_savel_local_data_source.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/data/remote_data_source/explore_popular_remote_source.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/data/remote_data_source/explore_savel_remote_source.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/repo/explore_all_repo_impl.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/repo/explore_new_repo_impl.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/repo/explore_popular_repo_impl.dart';
import 'package:plant_care/Features/home_screens/explore_screen/data_layer/repo/explore_saved_repo_impl.dart';
import 'package:plant_care/Features/home_screens/explore_screen/domain/use_cases/explore_all_use_case.dart';
import 'package:plant_care/Features/home_screens/explore_screen/domain/use_cases/explore_popular_use_case.dart';
import 'package:plant_care/Features/home_screens/explore_screen/domain/use_cases/explore_saved_use_case.dart';
import '../../data_layer/data/local_data_source/explore_all_local_data_source.dart';
import '../../data_layer/data/remote_data_source/explore_all_remote_source.dart';
import '../../data_layer/data/remote_data_source/explore_new_remote_source.dart';
import '../../domain/use_cases/explore_new_use_case.dart';
import '../manger/fetch_new_cubit/fetch_new_cubit.dart';
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
        BlocProvider(
          create: (context) {
            return FetchAllYouMayLikeCubit(
              ExploreAllYMLUseCase(
                ExploreAllRepoImpl(
                  exploreAllLocalDataSourceImpl:
                      ExploreAllLocalDataSourceImpl(),
                  exploreAllRemoteDataSourceImplement:
                      ExploreAllDataSourceImplement(),
                ),
              ),
            )..fetchYouMayLike();
          },
        ),
        BlocProvider(
          create: (context) {
            return FetchNewCubit(
              ExploreNewUseCase(
                ExploreNewRepoImpl(
                  exploreNewLocalDataSourceImpl:
                      ExploreNewLocalDataSourceImpl(),
                  exploreNewRemoteDataSourceImplement:
                      ExploreNewDataSourceImplement(),
                ),
              ),
            )..fetchNewPosts();
          },
        ),
        BlocProvider(
          create: (context) {
            return FetchPopularCubit(
              ExplorePopularUseCase(
                ExplorePopularRepoImpl(
                  explorePopularLocalDataSourceImpl:
                      ExplorePopularLocalDataSourceImpl(),
                  explorePopularRemoteDataSourceImplement:
                      ExplorePopularDataSourceImplement(),
                ),
              ),
            )..fetchPopularPosts();
          },
        ),
        BlocProvider(
          create: (context) {
            return FetchSavedCubit(
              ExploreSavedUseCase(
                ExploreSavedRepoImpl(
                  exploreSaveLocalDataSourceImpl:
                      ExploreSaveLocalDataSourceImpl(),
                  exploreSaveRemoteDataSourceImplement:
                      ExploreSaveDataSourceImplement(),
                ),
              ),
            )..fetchSavedPosts();
          },
        )
      ],
      child: BlocConsumer<MainExploreCubit, MainExploreState>(
          listener: (context, state) {},
          builder: (context, state) {
            cubit = MainExploreCubit.get(context);
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
