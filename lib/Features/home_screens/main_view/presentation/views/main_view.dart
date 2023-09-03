import 'package:flutter/material.dart';
import 'package:plant_care/Features/home_screens/main_view/presentation/widgets/widgets.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

class MainViewScreen extends StatefulWidget {
  const MainViewScreen({super.key});

  @override
  State<MainViewScreen> createState() => _MainViewScreenState();
}

class _MainViewScreenState extends State<MainViewScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: MainViewWidgets.items,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MainViewWidgets.appBar(index, context),
            Expanded(child: screens()),
          ],
        ),
      ),
    );
  }

  Widget screens() => StringsAndPathes.screens[index];
}
