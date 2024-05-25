import 'package:paalii/common/widgets/custom/container/rounded_container.dart';
import 'package:paalii/common/widgets/products/ratings/rating_star_widget.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:paalii/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImageStrings.profile)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  "John Penofilia",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const RatingStarWidget(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              "March 11, 2024",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          "The app is beautiful and easy to use. Purchase was easy too. It was super easy looking through products.",
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: " Show Less",
          trimCollapsedText: " Show More",
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Company review
        RoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Baby Hub",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "March 12, 2024",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  "The app is beautiful and easy to use. Purchase was easy too. It was super easy looking through products.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: " Show Less",
                  trimCollapsedText: " Show More",
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
