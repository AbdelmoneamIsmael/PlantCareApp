import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';

import '../../Features/home_screens/explore_screen/Presentation/view/explore_screen.dart';
import '../../Features/home_screens/mygarden_Screen/Presentation/view/mygarden_Screen.dart';
import '../../Features/home_screens/profile_screen/Presentation/view/profile_screen.dart';
import '../../Features/home_screens/schedule_screen/Presentation/view/schedule_screen.dart';

class StringsAndPathes {
  //images
  static const String splashImage = 'assets/images/splash_screen.jpg';
  static const String addNewPlant = 'assets/images/add_new.png';
  static const String cardImage = 'assets/images/image_card.jpg';
  static const String profileImage = 'assets/images/profile_image.jpg';

  //strings
  static const String splashText = 'Plant Pal';
  static const String loginPhrase = 'Let\'s grow together';
  static const String forgetPass = 'Forget your Password ?';
  static const String loginConfirm = 'Confirm';
  static const String emailValidate = 'Email address mustn\'t be empty';
  static const String passwordValidate = 'Email address mustn\'t be empty';
  static const String signupHint = 'No account sign up ?';
  static const String noPlant = 'OH ! There is no plants';
  static const String slideBarTitle = 'You may like it';
  static const String plantCare = 'Plant Care';
  static const String seeAll = 'See All';
  static const String noDescribe =
      'Browse premium related images on iStock | Save 20 % with code UNSPLASH20';
  static const String newPlant = 'New Plant';
  static const String popularPlant = 'Popular Plant';
  static const String savedPlant = 'Saved Plant';

  //items
  static const List bottomNavigationBarLabel = [
    'My Garden',
    'Explore',
    'schedule',
    'Profile'
  ];
  static List screens = [
    const MyGardenScreen(),
    const ExploreScreen(),
    const ScheduleScreen(),
    const ProfileScreen(),
  ];

  static const List tapExploreLabel = ['All', 'New', 'Popular', 'Saved'];
  static const List profileOptions = [
    'Personal Information',
    'Turn on The reminder ',
    'Dark Theme',
    'About'
  ];
  static List<Widget> profileTapsIcons = [
    const FaIcon(FontAwesomeIcons.chevronRight),
    GFToggle(onChanged: (value) {}, value: true),
    GFToggle(onChanged: (value) {}, value: false),
    const FaIcon(FontAwesomeIcons.chevronRight),
  ];
  //constant
  static const Duration time = Duration(seconds: 1);
}
