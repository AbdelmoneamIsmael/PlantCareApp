import 'package:flutter/material.dart';
import 'package:plant_care/Features/sign_in_up/sign_up/features/sign_up/presentation/widgets/text_field.dart';
import 'package:plant_care/core/colors/app_colors.dart';
import '../../../../../../../core/strings_and_pathes/strings_and_pathes.dart';
import '../../../../../../../core/utilies/app_routers.dart';
import '../widgets/profile_image_picker.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController tName = TextEditingController();
  final TextEditingController tEmail = TextEditingController();
  final TextEditingController tPassword = TextEditingController();
  final TextEditingController tAdress = TextEditingController();
  final TextEditingController tPhone = TextEditingController();
  final TextEditingController tBio = TextEditingController();
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: keyForm,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 40.8),
              child: Column(
                children: [
                  signUpImageScreen(),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    StringsAndPathes.signUpHint,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  informationsSection(),
                  signUpBottom(context),
                  alreadyHaveAcoountButtom(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget alreadyHaveAcoountButtom(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kLoginScreen);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          StringsAndPathes.alreadyHaveAccount,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }

  Padding signUpBottom(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 23.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: MaterialButton(
          height: 48,
          onPressed: () {
            if (keyForm.currentState!.validate()) {
              GoRouter.of(context).pop();
            }
          },
          color: AppColors.appBarColor,
          child: Center(
            child: Text(
              'Register',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Container signUpImageScreen() {
    return Container(
      height: 183.57,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
            image: AssetImage(StringsAndPathes.signUpImage), fit: BoxFit.cover),
      ),
    );
  }

  Column informationsSection() {
    return Column(
      children: [
        MySignUpTFF(
          controller: tEmail,
          hintText: 'Email',
          icon: const Icon(Icons.email_outlined),
          validation: (value) {
            if (value!.isEmpty) {
              return 'You must enter an Email';
            }
          },
        ),
        MySignUpTFF(
          controller: tPassword,
          hintText: 'password',
          security: true,
          icon: const Icon(Icons.password),
          validation: (value) {
            if (value!.isEmpty) {
              return 'You must enter a Password';
            }
          },
        ),
        const ProfileImagePick(),
        MySignUpTFF(
          controller: tName,
          hintText: 'name',
          icon: const Icon(Icons.person_add_alt),
          validation: (value) {
            if (value!.isEmpty) {
              return 'You must enter a name';
            }
          },
        ),
        MySignUpTFF(
          controller: tPhone,
          hintText: 'Phone',
          icon: const Icon(Icons.phone_android_outlined),
          validation: (value) {
            if (value!.isEmpty) {
              return 'You must enter a Phone';
            }
          },
        ),
        MySignUpTFF(
          controller: tBio,
          hintText: 'bio',
          icon: const Icon(Icons.person_2_outlined),
          validation: (value) {
            if (value!.isEmpty) {
              return 'You must enter a Bio';
            }
          },
        ),
        MySignUpTFF(
          controller: tAdress,
          hintText: 'address',
          icon: const Icon(Icons.card_membership_outlined),
          validation: (value) {
            if (value!.isEmpty) {
              return 'You must enter an Address';
            }
          },
        ),
      ],
    );
  }
}
