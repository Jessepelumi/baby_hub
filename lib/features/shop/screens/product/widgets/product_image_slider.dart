import 'package:baby_hub/common/widgets/images/rounded_banner_image.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
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
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (_, index) => RoundedBannerImage(
            imageUrl: TImageStrings.product_test,
            widht: 80,
            //fit: BoxFit.contain,
            backgroundColor: dark ? TColors.dark : TColors.white,
            border: Border.all(color: TColors.primary),
            padding: EdgeInsets.all(TSizes.sm),
          ),
          separatorBuilder: (_, __) => SizedBox(
            width: TSizes.spaceBtwItems,
          ),
        ),
      ),
    );
  }
}
