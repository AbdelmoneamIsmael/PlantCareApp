import 'package:flutter/material.dart';
import 'package:plant_care/Features/home_screens/profile_screen/Presentation/widgets/account_mangement_buttoms.dart';

import 'package:plant_care/Features/home_screens/profile_screen/Presentation/widgets/profile_cover.dart';


import '../widgets/profile_photo_editing_buttom.dart';
import '../widgets/text_box_edit_section.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Column(
        children: [
          ProfileCover(),
          TextBoxEditSection(),
          SizedBox(
            height: 30,
          ),
          ProfilePhotoEditingButtom(),
          AccountMangementBtns(),
        ],
      ),
    );
  }
}
