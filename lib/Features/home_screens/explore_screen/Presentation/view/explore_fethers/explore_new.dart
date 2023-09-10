import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/card_plant.dart';

import '../../../../../../core/strings_and_pathes/strings_and_pathes.dart';
import '../../manger/fetch_new_cubit/fetch_new_cubit.dart';

class ExploreNew extends StatelessWidget {
  const ExploreNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            StringsAndPathes.newPlant,
            style: Theme
                .of(context)
                .textTheme
                .bodyMedium,
          ),
          newPlantCards(),
        ],
      ),
    );
  }

  Widget newPlantCards() {
    return BlocConsumer<FetchNewCubit, FetchNewState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if(state is FetchNewLoading){
          return const Center(child: CircularProgressIndicator(color: Colors.green,),);
        }if(state is FetchNewSuccess){
          return Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>  PlantCard(exploreEntity: state.exploreEntity[index]),
              separatorBuilder: (context, index) => const SizedBox(height: 20,),
              itemCount: state.exploreEntity.length,
            ),
          );
        }else
          {
            return state is FetchNewError ? Text(state.e):Text('ddd');
          }

      },
    );
  }
}
