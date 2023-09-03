import 'package:flutter/material.dart';

import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

import '../widgets/profile_cover.dart';
import '../widgets/tap_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileCover(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Abdelmoneam Ismeal',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => TapWidget(
                      index: index,
                      text: StringsAndPathes.profileOptions[index],
                      widget: StringsAndPathes.profileTapsIcons[index],
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: StringsAndPathes.profileOptions.length),
          ),
        ],
      ),
    );
  }
}
