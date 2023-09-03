import 'package:flutter/material.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/widgets/card_plant.dart';

import '../../../../../../core/strings_and_pathes/strings_and_pathes.dart';

class ExploreNew extends StatelessWidget {
  const ExploreNew({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            StringsAndPathes.newPlant,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          newPlantCards(),
        ],
      ),
    );

  }

  Widget newPlantCards()=>Padding(
    padding: const EdgeInsets.only(top:  15.0),
    child: ListView.separated(
      shrinkWrap: true,
        physics:const  NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const PlantCard(),
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemCount: 6,
    ),
  );
}
