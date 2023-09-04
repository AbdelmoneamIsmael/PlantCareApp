import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:plant_care/Features/splash/presentation/view/splash_screen.dart';
import 'package:plant_care/core/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

 await Firebase.initializeApp();
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
