import 'package:paalii/common/widgets/chip/choice_chip.dart';
import 'package:paalii/common/widgets/custom/container/rounded_container.dart';
import 'package:paalii/common/widgets/products/product_cards/product_price_text.dart';
import 'package:paalii/common/widgets/texts/product_title_text.dart';
import 'package:paalii/common/widgets/texts/section_heading.dart';
import 'package:paalii/localization/naira_symbol.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Column(
                children: [
                  const SectionHeading(
                      title: "Variation", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                              title: "Price: ", smallSize: true),
                          ProductPriceText(
                            price: "7800",
                            currency: getNaira(),
                            lineThrough: true,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          ProductPriceText(
                            price: "7100",
                            currency: getNaira(),
                          ),
                        ],
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      Row(
                        children: [
                          const ProductTitleText(
                              title: "Stock: ", smallSize: true),
                          Text(
                            "In stock",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .apply(color: TColors.error),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  const ProductTitleText(
                    title:
                        "Description of the product goes here, and it can go up to a maximum of 4 lines.",
                    smallSize: true,
                    maxLines: 4,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: "Colors", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: "Green",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "Blue",
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "Red",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: "Sizes", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: "EU 34",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "EU 36",
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "EU 38",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
