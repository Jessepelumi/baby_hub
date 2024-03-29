import 'package:baby_hub/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoadingCircularButton extends StatelessWidget {
  const OnBoadingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: TColors.primary),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
