import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/common/widgets/products/ratings/rating_star_widget.dart';
import 'package:baby_hub/features/shop/screens/reviews/widgets/overall_product_rating.dart';
import 'package:baby_hub/features/shop/screens/reviews/widgets/user_review_card.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Reviews & Ratings",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ratings and reviews are verified and are from prople who use the same type of device that you use.",
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              // Overall product rating
              OverallProductRating(),
              RatingStarWidget(rating: 4.5),
              Text("199", style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: TSizes.spaceBtwSections),

              // User review list
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
