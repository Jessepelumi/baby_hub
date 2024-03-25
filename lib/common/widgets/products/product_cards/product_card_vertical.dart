import 'package:baby_hub/common/styles/shadows.dart';
import 'package:baby_hub/common/widgets/custom/container/rounded_container.dart';
import 'package:baby_hub/common/widgets/icons/heart_icon.dart';
import 'package:baby_hub/common/widgets/images/rounded_banner_image.dart';
import 'package:baby_hub/common/widgets/products/product_cards/product_price_text.dart';
import 'package:baby_hub/common/widgets/texts/product_title_text.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/image_strings.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // Thumbnail image
                  const RoundedBannerImage(
                    imageUrl: TImageStrings.product_test,
                    applyImageRadius: true,
                  ),

                  // Sale tag
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  // Favourite icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: HeartIconWidget(
                      icon: Iconsax.heart5,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            // Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product title
                  const ProductTitleText(
                    title: "JEOLAD Baby Shoe",
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  // Brand name
                  Row(
                    children: [
                      Text(
                        "JEOLAD",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                    ],
                  ),

                  // Purchase
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      ProductPriceText(price: "35.0"),

                      // Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
