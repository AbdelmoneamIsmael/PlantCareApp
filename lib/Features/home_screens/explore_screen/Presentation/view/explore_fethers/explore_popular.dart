import 'package:flutter/material.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

import '../../widgets/card_on.dart';

class ExplorePopular extends StatelessWidget {
  const ExplorePopular({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            StringsAndPathes.popularPlant,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          popularPlantCards(),
        ],
      ),
    );
  }

  Widget popularPlantCards()=>Padding(
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
            (index) =>const Stack(
          children: [
            PlantOnGrid(),
          ],
        ),
      ),
    ),
  );
}
