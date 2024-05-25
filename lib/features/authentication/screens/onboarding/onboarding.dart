import 'package:paalii/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:paalii/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:paalii/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:paalii/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:paalii/features/authentication/screens/onboarding/widgets/onboarding_widget.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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

          // skip button
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
