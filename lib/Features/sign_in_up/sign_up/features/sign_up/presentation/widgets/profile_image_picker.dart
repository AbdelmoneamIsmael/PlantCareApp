import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

class ProfileImagePick extends StatelessWidget {
  const ProfileImagePick({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: CircleAvatar(
        radius: 60,
        backgroundImage: const AssetImage(StringsAndPathes.profileImage),
        child: Align(
          alignment: Alignment.bottomRight,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.cameraRetro)),
          ),
        ),
      ),
    );
  }
}
