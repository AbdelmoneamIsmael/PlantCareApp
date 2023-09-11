import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

import 'package:plant_care/core/colors/app_colors.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';
import 'package:plant_care/core/utilies/app_routers.dart';

import '../../../../../core/reuseable_widgets/my_buttom.dart';
import '../../../../../core/reuseable_widgets/text_form.dart';

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
                            return null;
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
                            return null;
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
                                GoRouter.of(context).push(AppRouters.kHomePage);
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
                          child: GestureDetector(
                            onTap: () {
                              GoRouter.of(context)
                                  .push(AppRouters.kSignUpScreen);
                            },
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
}
