import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:plant_care/Features/splash/presentation/view/splash_screen.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';
import 'package:plant_care/core/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Features/home_screens/explore_screen/domain/entity/explore_entity.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

 await Firebase.initializeApp();
 Hive.registerAdapter(ExploreEntityAdapter());
 await Hive.openBox(StringsAndPathes.kFetchYouMayLike);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeDataMode.light(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
