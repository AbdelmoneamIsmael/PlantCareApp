import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';
import 'package:plant_care/core/utilies/app_routers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> fadeInOut;
  late AnimationController animationController;

  @override
  void initState() {
    initialAnimation();
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).push(AppRouters.kLoginScreen);
      },
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadeTransition(
            opacity: fadeInOut,
            child: const Column(
              children: [
                Expanded(
                    child: Image(
                  image: AssetImage(StringsAndPathes.splashImage),
                  fit: BoxFit.cover,
                )),
              ],
            ),
          ),
          FadeTransition(
            opacity: fadeInOut,
            child: Center(
              child: Text(
                StringsAndPathes.splashText,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          )
        ],
      ),
    );
  }

  initialAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    fadeInOut = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
    fadeInOut.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }
}
