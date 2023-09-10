import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:plant_care/Features/home_screens/main_view/presentation/views/main_view.dart';

import 'package:plant_care/core/colors/app_colors.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';
import 'package:plant_care/core/utilies/app_routers.dart';

import '../../../../core/reuseable_widgets/my_buttom.dart';
import '../../../../core/reuseable_widgets/text_form.dart';
import '../../../home_screens/explore_screen/data_layer/data/remote_data_source/explore_all_remote_source.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController tEmail = TextEditingController();
    TextEditingController tPassword = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Scaffold(
        body: Stack(
          children: [
            const Image(
              height: double.infinity,
              image: AssetImage(StringsAndPathes.splashImage),
              fit: BoxFit.cover,
            ),
            //black screen
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black38,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringsAndPathes.loginPhrase,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        MyTextForm(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return StringsAndPathes.emailValidate;
                            }
                          },
                          hintText: 'Enter Email',
                          textEditingController: tEmail,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        MyTextForm(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return StringsAndPathes.passwordValidate;
                            }
                          },
                          hintText: 'Enter Password',
                          textEditingController: tPassword,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              const Expanded(
                                child: SizedBox(),
                              ),
                              Text(
                                StringsAndPathes.forgetPass,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.backgroundColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MyBTN(
                            text: StringsAndPathes.loginConfirm,
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                // print('here');
                                //  ExploreAllDataSourceImplement().fetchStanderPosts().then((value) {
                                //    print(value[0].plantDescription);
                                //
                                //       },
                                //  );
                                GoRouter.of(context).push(AppRouters.kHomePage);
                                //  Get.to(const MainViewScreen(),
                                //     transition: Transition.fade,
                                //      duration: StringsAndPathes.time);
                              }
                            }),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Text(
                            'Login Via',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColors.backgroundColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.apple,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                              size: 50,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Text(
                            StringsAndPathes.signupHint,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColors.backgroundColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void printLongString(String text) {
    final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern
        .allMatches(text)
        .forEach((RegExpMatch match) => print(match.group(0)));
  }
}
