import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:plant_care/Features/home_screens/explore_screen/Presentation/manger/main_explore_cubit/bloc_observe.dart';

import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';
import 'package:plant_care/core/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plant_care/core/utilies/app_routers.dart';

import 'Features/home_screens/explore_screen/domain/entity/explore_entity.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

 await Firebase.initializeApp();
 await Hive.initFlutter();
  Bloc.observer=BlocOpserve();
 Hive.registerAdapter(ExploreEntityAdapter());
 await Hive.openBox(StringsAndPathes.kFetchYouMayLike);
  await Hive.openBox(StringsAndPathes.kFetchStanderPosts);
  await Hive.openBox(StringsAndPathes.kFetchSavedPosts);
  await Hive.openBox(StringsAndPathes.kFetchPopularPosts);
  await Hive.openBox(StringsAndPathes.kFetchNewPosts);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeDataMode.light(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.router,
    );
  }
}
