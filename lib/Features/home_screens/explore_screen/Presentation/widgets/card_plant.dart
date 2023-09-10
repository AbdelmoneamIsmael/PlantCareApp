import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_care/Features/home_screens/explore_screen/domain/entity/explore_entity.dart';

import '../../../../../core/strings_and_pathes/strings_and_pathes.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlantCard extends StatelessWidget {
  final ExploreEntity exploreEntity;
  const PlantCard({required this.exploreEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              exploreEntity.exImage!.isEmpty
                  ? Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(StringsAndPathes.cardImage),
                            fit: BoxFit.cover),
                      ),
                    )
                  : ClipRRect(
                borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                      imageUrl: exploreEntity.exImage!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: exploreEntity.plantDescription!.isEmpty
                ? const Text(
                    StringsAndPathes.noDescribe,
                  )
                : Text(exploreEntity.plantDescription!),
          ),
        ],
      ),
    );
  }
}
