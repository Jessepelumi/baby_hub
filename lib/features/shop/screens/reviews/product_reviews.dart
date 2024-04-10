import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/features/shop/screens/reviews/widgets/rating_progress_indicator.dart';
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
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Text("4.8",
                          style: Theme.of(context).textTheme.displayLarge)),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        RatingProgressIndicator(text: "5", value: 0.6),
                        RatingProgressIndicator(text: "4", value: 0.7),
                        RatingProgressIndicator(text: "3", value: 0.4),
                        RatingProgressIndicator(text: "2", value: 0.2),
                        RatingProgressIndicator(text: "1", value: 0.1),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
