import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/card_plant.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

import '../../manger/fetch_saved_cubit/fetch_saved_cubit.dart';

class ExploreSaved extends StatelessWidget {
  const ExploreSaved({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsAndPathes.savedPlant,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          savedPlantCards(),
        ],
      ),
    );
  }

  Widget savedPlantCards() {
    return BlocConsumer<FetchSavedCubit, FetchSavedState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is FetchSavedLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.green,
          ));
        }
        if (state is FetchSavedSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  PlantCard(exploreEntity: state.exploreEntity[index]),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: state.exploreEntity.length,
            ),
          );
        } else {
          return state is FetchSavedError ? Text(state.e) : const Text('ddd');
        }
      },
    );
  }
}
