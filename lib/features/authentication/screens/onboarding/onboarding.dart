import 'package:baby_hub/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:baby_hub/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:baby_hub/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:baby_hub/features/authentication/screens/onboarding/widgets/onboarding_widget.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            children: const [
              OnBoardingWidget(
                image: TImageStrings.searching,
                title: TTextStrings.onBoardingTitle1,
                subTitle: TTextStrings.onBoardingSubTitle1,
              ),
              OnBoardingWidget(
                image: TImageStrings.shopping,
                title: TTextStrings.onBoardingTitle2,
                subTitle: TTextStrings.onBoardingSubTitle2,
              ),
              OnBoardingWidget(
                image: TImageStrings.delivery,
                title: TTextStrings.onBoardingTitle3,
                subTitle: TTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          // ship button
          const OnBoardingSkip(),

          // page navigation
          const OnBoardingDotNavigation(),

          // circular button
          const OnBoadingCircularButton(),
        ],
      ),
    );
  }
}
