import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/device/device_utility.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoadingCircularButton extends StatelessWidget {
  const OnBoadingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {},
        child: const Icon(Iconsax.arrow_right3),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
      ),
    );
  }
}
