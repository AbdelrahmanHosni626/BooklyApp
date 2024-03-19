import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

import '../../../core/routing/routes.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);


  final List<Introduction> list = [
    Introduction(
      imageHeight: 200,
      imageWidth: 300,
      title: 'Read',
      subTitle: 'Search for a book in any field and read it with all of exciting',
      imageUrl: Assets.imagesOnBoarding1,
    ),
    Introduction(
      imageHeight: 200,
      imageWidth: 300,
      title: 'Enjoy',
      subTitle: 'You will recommend a various books to your friends based om your preferences',
      imageUrl: Assets.imagesOnBoarding2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      foregroundColor: ColorsManager.mainBlue,
      introductionList: list,
      onTapSkipButton: () {context.pushNamed(Routes.homeScreen);},
      skipTextStyle: const TextStyle(
        color: ColorsManager.mainBlue,
        fontSize: 18,
      ),

    );
  }
}
