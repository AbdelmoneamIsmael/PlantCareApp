// GoRouter configuration
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_care/Features/login_screen/presentation/views/login.dart';

import '../../Features/home_screens/main_view/presentation/views/main_view.dart';
import '../../Features/home_screens/profile_screen/Presentation/view/about.dart';
import '../../Features/home_screens/profile_screen/Presentation/view/personal_information.dart';
import '../../Features/splash/presentation/view/splash_screen.dart';
import '../strings_and_pathes/strings_and_pathes.dart';
class AppRouters{

  static const String rootSplashArt='/';
  static const String kLoginScreen='/Login_Screen';
  static const String kHomePage='/Login_Screen/HomePage';
  static const String kPersonalInformation='/Login_Screen/HomePage/Profile/PersonalInformation';
  static const String kAbout='/Login_Screen/HomePage/Profile/AboutInformation';

  
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: rootSplashArt,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kLoginScreen,

        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          transitionDuration: StringsAndPathes.time,
          child:const LoginScreen() ,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>

              FadeTransition(opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation), child: child),
          // transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // late final AnimationController _controller = AnimationController(
            //   duration: const Duration(seconds: 2),
            //   vsync: this,
            // )..repeat(reverse: true);
            //  Animation<Offset> slide=Tween<Offset>(begin: Offset.zero, end: const Offset(1.5, 0.0)).animate(CurvedAnimation(curve: Curves.elasticIn, parent: null,);
            // return SlideTransition(position:slide);
          // }
        ),
      ),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => const MainViewScreen(),
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          transitionDuration: StringsAndPathes.time,
          child:const MainViewScreen() ,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>

              FadeTransition(opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation), child: child),
        ),

      ),
      GoRoute(
        path: kPersonalInformation,
        builder: (context, state) => const PersonalInformation(),
      ),
      GoRoute(
        path: kAbout,
        builder: (context, state) => const AboutScreen(),
      ),
    ],
  );
}
