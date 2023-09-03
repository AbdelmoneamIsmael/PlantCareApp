import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/strings_and_pathes/strings_and_pathes.dart';

class  PlantCard extends StatelessWidget {
  const  PlantCard({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child:  Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
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
          const Padding(
            padding:  EdgeInsets.all(10.0),
            child:  Text(StringsAndPathes.noDescribe,),
          ),
        ],
      ),
    );
  }
}
