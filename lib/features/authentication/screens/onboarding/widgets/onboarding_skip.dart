import 'package:paalii/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/device/device_utility.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.titleSmall!.apply(
              color: THelperFunctions.isDarkMode(context)
                  ? TColors.white
                  : TColors.dark),
        ),
      ),
    );
  }
}
