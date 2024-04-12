import 'package:baby_hub/common/widgets/images/circular_image.dart';
import 'package:baby_hub/common/widgets/texts/brand_title_text.dart';
import 'package:baby_hub/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        // Image
        CircularImage(
          image: TImageStrings.product_test,
          width: 60,
          height: 60,
          //padding: EdgeInsets.all(value),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtwItems),

        // Details
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BrandTitleText(title: "JEOLAD"),
              Flexible(
                child: ProductTitleText(
                  title: "Unisex baby sneakers",
                  maxLines: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Color ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Green ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: "Size ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "EU 12 ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
