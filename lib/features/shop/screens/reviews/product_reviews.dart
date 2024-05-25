import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/products/ratings/rating_star_widget.dart';
import 'package:paalii/features/shop/screens/reviews/widgets/overall_product_rating.dart';
import 'package:paalii/features/shop/screens/reviews/widgets/user_review_card.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Reviews & Ratings",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from prople who use the same type of device that you use.",
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Overall product rating
              const OverallProductRating(),
              const RatingStarWidget(rating: 4.5),
              Text("199", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // User review list
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
