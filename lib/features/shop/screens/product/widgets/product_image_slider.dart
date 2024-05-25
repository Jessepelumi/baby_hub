import 'package:paalii/common/widgets/images/rounded_banner_image.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: 0,
      left: TSizes.defaultSpace,
      bottom: 30,
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (_, index) => RoundedBannerImage(
            imageUrl: TImageStrings.product_test,
            widht: 80,
            //fit: BoxFit.contain,
            backgroundColor: dark ? TColors.dark : TColors.white,
            border: Border.all(color: TColors.primary),
            padding: const EdgeInsets.all(TSizes.sm),
          ),
          separatorBuilder: (_, __) => const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
        ),
      ),
    );
  }
}
