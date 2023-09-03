import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

class PlantOnGrid extends StatelessWidget {
  const PlantOnGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 320,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child:  Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image:  AssetImage(StringsAndPathes.cardImage),fit: BoxFit.cover),
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FaIcon(FontAwesomeIcons.heart,color: Colors.white ,),
                ),
              )
            ],
          ),
           Padding(
            padding:  const EdgeInsets.all(10.0),
            child:  Text(StringsAndPathes.noDescribe,style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16),),
          ),
        ],
      ),
    );
  }
}
