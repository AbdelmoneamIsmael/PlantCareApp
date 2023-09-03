// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:plant_care/core/reuseable_widgets/my_buttom.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

class MyGardenScreen extends StatelessWidget {
  const MyGardenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(StringsAndPathes.addNewPlant),
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              StringsAndPathes.noPlant,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyBTN(text: 'Add A plant', onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
