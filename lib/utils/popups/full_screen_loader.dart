import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (context) => PopScope(
        canPop: false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: TColors.primary),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
